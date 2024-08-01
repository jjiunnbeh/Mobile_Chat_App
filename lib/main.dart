import 'package:flutter/material.dart';
import 'package:mobile_chat_app/pages/chat_page.dart';
import 'package:mobile_chat_app/pages/forget_password_page.dart';
import 'package:mobile_chat_app/pages/login_page.dart';
import 'package:mobile_chat_app/pages/register_page.dart';
import 'package:mobile_chat_app/pages/welcome_page.dart';

void main() {
  runApp(const ChatApp());
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
        RegisterPage.id :(context) => const RegisterPage(),
        ChatPage.id:(context) => const ChatPage(),
        ForgetPasswordPage.id:(context) => const ForgetPasswordPage(),
      },
    );
  }
}
