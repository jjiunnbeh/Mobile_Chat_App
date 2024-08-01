import 'package:flutter/material.dart';
import 'package:mobile_chat_app/pages/loginPage.dart';
import 'package:mobile_chat_app/utilities/constants.dart';
import 'package:mobile_chat_app/components/herologo.dart';
import 'package:mobile_chat_app/components/input.dart';
import 'package:mobile_chat_app/components/mybutton.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static const String id = '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register for an account', style: kAppBarTextStyle),
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
                      padding: const EdgeInsets.symmetric(vertical: 100.0),
                      margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Input(
                    hint: 'Email',
                    keyboard: kEmailKeyboard,
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Input(
                    hint: 'Password',
                    obscureText: true,
                    toggleViewIcon: true,
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  MyButton(
                    margin: const EdgeInsets.only(
                        top: 10.0, left: 20.0, right: 20.0),
                    text: 'Register',
                    onPressed: () async {
                      try {
                        if (email != null && password != null) {
                          final newUser = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: email.toString(),
                                  password: password.toString());
                          Navigator.pushNamed(context, LoginPage.id);
                        }
                      } catch (error) {
                        print(error);
                      }
                    },
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
