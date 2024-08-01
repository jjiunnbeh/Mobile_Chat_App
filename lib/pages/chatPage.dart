import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_chat_app/components/message.dart';
import 'package:mobile_chat_app/components/messageStream.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});
  static const String id = '/chat';

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  User? loggedInUser;
  String? chatText;
  final textFieldController = TextEditingController();

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
            const MessagesStream(),
            Container(
              decoration: kChatContainerDeco,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: textFieldController,
                      onChanged: (value) {
                        chatText = value;
                      },
                      decoration: kChatTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      textFieldController.clear();
                      try {
                        await Firebase.initializeApp();
                        await FirebaseFirestore.instance.collection('chat').add(
                            {'sender': loggedInUser?.email, 'text': chatText});
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

