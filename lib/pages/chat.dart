import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});
  static const String id = '/chat';

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  User? loggedInUser;
  String? chatText;

  void getCurrentUser() {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser?.email);
      }
    } catch (error) {
      print(error);
    }
  }

  // Stream<dynamic>? stream0()
  // {
  //
  //   // await for ( var snapshot in FirebaseFirestore.instance.collection('chat').snapshots())
  //   //   {
  //   //     for(var message in snapshot.docs)
  //   //       {
  //   //         print(message.data()['sender']);
  //   //       }
  //   //   }
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              //Logout
            },
          ),
        ],
        title: const Text('Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StreamBuilder(
              stream: FirebaseFirestore.instance.collection('chat').snapshots(),
              builder: (context, snapshot) {
                List<Widget> messageWidgets = [];
                if (snapshot.hasData) {
                  final messages = snapshot.data!.docs;
                  for (var message in messages) {
                    final messageText = message.data()['text'];
                    final messageSender = message.data()['sender'];
                    final messageWidget = Text(messageText);
                    messageWidgets.add(messageWidget);
                  }
                }
                return Column(children: messageWidgets);
              },
            ),
            Container(
              decoration: kChatContainerDeco,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        chatText = value;
                      },
                      decoration: kChatTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      try {
                        await Firebase.initializeApp();
                        await FirebaseFirestore.instance.collection('chat').add(
                            {'sender': loggedInUser?.email, 'text': chatText});
                        print('sucsess');
                      } catch (error) {
                        print(error);
                      }
                    },
                    child: const Text(
                      'Send',
                      style: kChatSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
