import 'package:flutter/material.dart';
import 'package:mobile_chat_app/components/mybutton.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Logo goes here'),
              MyButton(
                text: 'Sign In',
                onPressed: (){},
              ),
              MyButton(
                text: 'Register',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
