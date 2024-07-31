import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';

class MyButton extends StatelessWidget {
  String text;
  Color? color;
  Function? onPressed;
  MyButton({required this.text, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: TextButton(
        onPressed: () => onPressed,
        style: TextButton.styleFrom(backgroundColor: color ?? kBlueButtonColor),
        child: Text(
          text,
          style: const TextStyle(fontFamily: 'Roboto', fontSize: 18.0),
        ),
      ),
    );
  }
}
