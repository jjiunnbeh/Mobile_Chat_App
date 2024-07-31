import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color? color;
  final void Function() onPressed;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  MyButton({required this.text, this.color, required this.onPressed, this.margin, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
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
