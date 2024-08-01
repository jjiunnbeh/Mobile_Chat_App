import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});
  static const String id = '/chat';

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return const Text('chat page');
  }
}
