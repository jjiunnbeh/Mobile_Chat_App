import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color? color;
  final void Function() onPressed;
  MyButton({required this.text, this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40.0),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, ),
      child: TextButton(
        onPressed:  onPressed,
        style: TextButton.styleFrom(backgroundColor: color ?? kBlueButtonColor),
        child: Text(
          text,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
