import 'package:flutter/material.dart';
import 'package:mobile_chat_app/components/mybutton.dart';
import 'loginPage.dart';
import 'package:mobile_chat_app/components/herologo.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: HeroLogo(
                padding: EdgeInsets.symmetric(vertical: 100),
                margin: EdgeInsets.only(left: 100, right: 100),
              ),
            ),
            Expanded(
              child: MyButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.id);
                },
              ),
            ),
            Expanded(
              child: MyButton(
                text: 'Register',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

