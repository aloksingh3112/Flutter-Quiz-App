import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  String question;
  Question(this.question);
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(question,
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,)
    );
  }
}