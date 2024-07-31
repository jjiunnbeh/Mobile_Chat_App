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
                      padding: EdgeInsets.symmetric(vertical: 100),
                      margin: EdgeInsets.only(left: 100, right: 100)
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Input(hint: 'Enter your email.',),
                SizedBox(height: 5,),
                Input(hint: 'Enter your password.',),
                MyButton(
                  margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                  text: 'Sign In',
                  onPressed: (){},
                )
              ],
            ),
          ),

        ],
      )),
    );
  }
}
