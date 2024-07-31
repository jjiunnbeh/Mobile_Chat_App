import 'package:flutter/material.dart';
import 'package:mobile_chat_app/pages/loginPage.dart';
import 'package:mobile_chat_app/pages/welcomePage.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => const WelcomePage(),
        LoginPage.id: (context) => const LoginPage(),
      },
    );
  }
}
