import 'package:flutter/material.dart';
import 'package:mobile_chat_app/utilities/constants.dart';

class Message extends StatelessWidget {
  const Message({required this.text, required this.sender,required this.isMe, super.key});
  final String text;
  final String sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: isMe? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.left,
            sender,
            style: kSenderTextStyle,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Material(
            borderRadius: isMe ? kRightMessageBubbleBorder : kLeftMessageBubbleBorder,
            elevation: 6.0,
            color: isMe ? Colors.blue : Colors.deepPurple[300],
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
