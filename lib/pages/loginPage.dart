import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';
import 'package:mobile_chat_app/components/herologo.dart';
import 'package:mobile_chat_app/components/input.dart';
import 'package:mobile_chat_app/components/mybutton.dart';

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: HeroLogo(
                        padding: const EdgeInsets.symmetric(
                          vertical: 100.0,
                        ),
                        margin:
                            const EdgeInsets.only(left: 100.0, right: 100.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Input(
                    keyboard: kEmailKeyboard,
                    hint: 'Enter your email.',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Input(
                    obscureText: true,
                    toggleViewIcon: true,
                    hint: 'Enter your password.',
                  ),

                  MyButton(
                    margin: const EdgeInsets.only(
                        top: 10.0, left: 20.0, right: 20.0),
                    text: 'Sign In',
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
