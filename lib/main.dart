import 'package:flutter/material.dart';

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
            children: [
              const Text('Logo goes here'),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('Sign In'),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
