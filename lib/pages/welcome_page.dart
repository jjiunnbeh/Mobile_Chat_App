import 'package:flutter/material.dart';
import 'package:mobile_chat_app/components/mybutton.dart';
import 'package:mobile_chat_app/utilities/constants.dart';
import 'loginPage.dart';
import 'package:mobile_chat_app/components/herologo.dart';
import 'registerPage.dart';

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
            Flexible(
              child: HeroLogo(
                padding: EdgeInsets.symmetric(vertical: 100),
                margin: EdgeInsets.only(left: 100, right: 100),
              ),
            ),
            MyButton(
              padding: kWelcomeButtonPadding,
              margin: kWelcomeButtonMargin,
              text: 'Sign In',
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
            ),
            MyButton(
              padding: kWelcomeButtonPadding,
              margin: kWelcomeButtonMargin,
              text: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegisterPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
