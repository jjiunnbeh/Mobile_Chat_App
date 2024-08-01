import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';

class Message extends StatelessWidget {
  const Message({required this.text, required this.sender, super.key});
  final String text;
  final String sender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            textAlign: TextAlign.left,
            style: kSenderTextStyle,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Material(
            borderRadius: BorderRadius.circular(20.0),
            elevation: 6.0,
            color: Colors.blue,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                text,
                style: kMessageTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
