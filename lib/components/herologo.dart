import 'package:flutter/material.dart';

class HeroLogo extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  HeroLogo({this.margin, this.padding});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: Container(
        margin: margin ,
        padding: padding,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'images/logo.png',
            height: 200,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

