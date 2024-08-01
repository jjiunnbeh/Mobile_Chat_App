import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';
import 'welcomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});
  static const String id = '/chat';


  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  User? loggedInUser;
  void getCurrentUser()
  {
    try
    {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null)
      {
        loggedInUser = user;
      }
    }
    catch(error)
    {
      print(error);
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
              },),
        ],
        title: const Text('Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: kChatContainerDeco,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: kChatTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //Implement send functionality.
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
