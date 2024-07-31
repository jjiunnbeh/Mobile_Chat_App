import 'package:flutter/material.dart';
class HeroLogo extends StatelessWidget {
  HeroLogo({this.margin, this.padding});
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: Container(
        margin: margin,
        padding: padding,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(90),
          child: Image.asset(
            'images/logo.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
