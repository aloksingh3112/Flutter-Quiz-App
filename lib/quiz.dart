

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget{
  final Function buttonPressed;
  final List questions;
  final  index;
  Quiz(this.buttonPressed,this.questions,this.index);
  @override
  Widget build(BuildContext ctx){
    return Column(
        children: [
          Question(questions[index]['question']),
         ...(questions[index]['answers'] as List<Map<String,Object>>).map((answer){
           return Answer(()=>buttonPressed(answer['score']),answer['text']);
         }).toList()

         
        ],
      );
  }
}