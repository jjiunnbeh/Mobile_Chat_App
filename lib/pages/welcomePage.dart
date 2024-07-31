import 'package:flutter/material.dart';
import 'package:mobile_chat_app/components/mybutton.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.all(30.0),
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset('images/logo.png'),
                ),
              ),
              MyButton(
                text: 'Sign In',
                onPressed: (){},
              ),
              MyButton(
                text: 'Register',
                onPressed: () {},
              ),
            ],
          ),
        ),
    );

  }
}
