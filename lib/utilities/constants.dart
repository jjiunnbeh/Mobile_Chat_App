import 'package:flutter/material.dart';
//====================Welcome Page==========================
const kBlueButtonColor = Colors.blueAccent;
const kButtonTextStyle = TextStyle(fontFamily: 'Roboto', fontSize: 18.0);
const kWelcomeButtonPadding =  EdgeInsets.all(10.0);
const kWelcomeButtonMargin = EdgeInsets.only(left: 10.0, right: 10.0,);

//====================Login Page=============================
const kAppBarTextStyle = TextStyle(fontFamily: 'Roboto', fontSize: 25.0);

//======================Input Field==============================
const kInputBorderRadius = BorderRadius.all(Radius.circular(32.0));
const kInputContentPadding = EdgeInsets.symmetric(horizontal: 20.0);
const kEmailKeyboard = TextInputType.emailAddress;
const kViewIcon = Icon(Icons.remove_red_eye);

//=========================Chat Page====================================
const kChatContainerDeco = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);
const kChatTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here',
  border: InputBorder.none,
);
const kChatSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);
const kCircleSpinner = Center(child: CircularProgressIndicator(backgroundColor: Colors.lightBlue,),);
const kListViewPadding = EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0,);
//Message bubble
const kSenderTextStyle = TextStyle(fontSize: 12.0,);
const kMessageTextStyle = TextStyle(fontSize: 15.0, color: Colors.white);
const kLeftMessageBubbleBorder = BorderRadius.only(topRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0), bottomRight: Radius.circular(30.0));
const kRightMessageBubbleBorder = BorderRadius.only(topLeft: Radius.circular(30.0), bottomLeft: Radius.circular(30.0), bottomRight: Radius.circular(30.0));

//==========================Forget Password ===============================
const kAlertTextStyle = TextStyle(color: Colors.red, fontSize: 15, fontFamily: 'Roboto',);
