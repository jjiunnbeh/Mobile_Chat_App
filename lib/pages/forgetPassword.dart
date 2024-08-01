import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';
import 'package:mobile_chat_app/components/herologo.dart';
import 'package:mobile_chat_app/components/input.dart';
import 'package:mobile_chat_app/components/mybutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static const String id = '/forgetPassword';

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String? email;
  String? alert;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password', style: kAppBarTextStyle),
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
                  MyButton(
                    margin: const EdgeInsets.only(
                        top: 10.0, left: 20.0, right: 20.0),
                    text: 'Send Reset Email',
                    onPressed: () async {
                      try {
                        await Firebase.initializeApp();
                        await FirebaseAuth.instance
                            .sendPasswordResetEmail(email: email.toString());
                        setState(() {
                          alert =
                              'A password reset link has been sent to your registered email address.';
                        });
                      } catch (error) {
                        print('Error starts here:');
                        print(error);
                        print("Error ends here.");
                      }
                    },
                  ),
                  alert != null
                      ? Text(
                          alert.toString(),
                          style: kAlertTextStyle,
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(width: 0, height: 0,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
