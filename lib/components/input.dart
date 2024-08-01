import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';

class Input extends StatefulWidget {
  Input({required this.hint, this.onChanged});
  final String hint;
  void Function(String)? onChanged;
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        textAlign: TextAlign.center,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hint,
          contentPadding: kInputContentPadding,
          border: const OutlineInputBorder(
            borderRadius: kInputBorderRadius,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide:
            BorderSide(color: Colors.lightBlueAccent, width: 1.0),
            borderRadius: kInputBorderRadius,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide:
            BorderSide(color: Colors.lightBlueAccent, width: 2.0),
            borderRadius: kInputBorderRadius,
          ),
        ),
      ),
    );
  }
}
