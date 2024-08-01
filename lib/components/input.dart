import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';

class Input extends StatefulWidget {
  Input(
      {required this.hint,
      this.onChanged,
      this.obscureText,
      this.keyboard,
      this.toggleViewIcon});
  final String hint;
  void Function(String)? onChanged;
  bool? obscureText;
  TextInputType? keyboard;
  bool? toggleViewIcon;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  void viewHide() {
    if (widget.obscureText == true) {
      widget.obscureText = false;
    } else if (widget.obscureText == false) {
      widget.obscureText = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        keyboardType: widget.keyboard,
        obscureText: widget.obscureText ?? false,
        textAlign: TextAlign.center,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          suffixIcon: widget.toggleViewIcon != null
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      viewHide();
                    });
                  },
                  icon: kViewIcon,
                )
              : null,
          hintText: widget.hint,
          contentPadding: kInputContentPadding,
          border: const OutlineInputBorder(
            borderRadius: kInputBorderRadius,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
            borderRadius: kInputBorderRadius,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
            borderRadius: kInputBorderRadius,
          ),
        ),
      ),
    );
  }
}
