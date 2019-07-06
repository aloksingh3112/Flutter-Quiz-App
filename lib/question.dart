import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  String question;
  Question(this.question);
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(question);
  }
}