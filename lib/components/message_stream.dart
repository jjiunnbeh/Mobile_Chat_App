import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_chat_app/components/message.dart';
import 'package:mobile_chat_app/utilities/constants.dart';

class MessagesStream extends StatelessWidget {
  const MessagesStream({required this.user,
    super.key,
  });

  final String? user;


  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('chat').orderBy('timestamp', descending: false).snapshots(),
      builder: (context, snapshot) {
        List<Widget> messageWidgets = [];
        if (snapshot.hasData) {
          final messages = snapshot.data?.docs.reversed;
          for (var message in messages!) {
            final messageText = message.data()['text'];
            final messageSender = message.data()['sender'];
            final messageWidget =
                Message(text: messageText, sender: messageSender, isMe: user == messageSender.toString(),);
            messageWidgets.add(messageWidget);
          }
        } else {
          return kCircleSpinner;
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: kListViewPadding,
            children: messageWidgets,
          ),
        );
      },
    );
  }
}
