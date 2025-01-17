import 'package:flutter/material.dart';
import 'package:mobile_chat_app/pages/chat_page.dart';
import 'package:mobile_chat_app/pages/forget_password_page.dart';
import 'package:mobile_chat_app/utilities/constants.dart';
import 'package:mobile_chat_app/components/herologo.dart';
import 'package:mobile_chat_app/components/input.dart';
import 'package:mobile_chat_app/components/mybutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String id = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;
  String? password;
  bool showLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In', style: kAppBarTextStyle),
        centerTitle: true,
      ),
      body: ModalProgressHUD(
        inAsyncCall: showLoading,
        child: SafeArea(
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
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                      keyboard: kEmailKeyboard,
                      hint: 'Email',
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Input(
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      obscureText: true,
                      toggleViewIcon: true,
                      hint: 'Password',
                    ),
                    MyButton(
                      margin: const EdgeInsets.only(
                          top: 10.0, left: 20.0, right: 20.0),
                      text: 'Sign In',
                      onPressed: () async {
                        setState(() {
                          showLoading = true;
                        });
                        try {
                          await Firebase.initializeApp();
                          await FirebaseAuth.instance.signInWithEmailAndPassword(
                              email: email.toString(),
                              password: password.toString());
                          setState(() {
                            showLoading = false;
                          });
                          Navigator.pushNamed(context, ChatPage.id);
                        } catch (error) {
                          print('Error starts here:');
                          print(error);
                          print("Error ends here.");
                          setState(() {
                            showLoading = false;
                          });
                        }
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ForgetPasswordPage.id);
                      },
                      child: const Text('Forget Password'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
