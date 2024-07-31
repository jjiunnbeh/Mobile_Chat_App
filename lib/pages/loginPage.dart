import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';
import 'welcomePage.dart';
import 'package:mobile_chat_app/components/herologo.dart';
import 'package:mobile_chat_app/components/input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String id = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In', style: kAppBarTextStyle),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: HeroLogo(
              margin: EdgeInsets.all(100),
              padding: EdgeInsets.only(left: 10, right: 10),
            ),
          ),
          Expanded(
            child: Input(hint: 'Enter your email.',),
          ),
          Expanded(
            child: Input(hint: 'Enter your password.',),
          ),
        ],
      )),
    );
  }
}
