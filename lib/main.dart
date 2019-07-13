import 'package:flutter/material.dart';


import './quiz.dart';
import './result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  var index=0;
  var _result=0;
  var questions=[
    {
       'question':'What is your name',
       'answers':[
         {'text':'alok','score':10}
         ,{'text':'avinash','score':6}
         ,{'text':'sidhant','score':7}]
   },
  {
       'question':'What is your pet name',
       'answers':[{'text':'dog','score':10}
         ,{'text':'cat','score':4}
         ,{'text':'rat','score':7}]
   },
   {
       'question':'What is your nick name',
       'answers':[{'text':'gg','score':8}
         ,{'text':'hh','score':6}
         ,{'text':'ss','score':2}]
   },
  ];
  buttonPressed(int score){
    setState(() {
       index=index+1;
       _result+=score;
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
      appBar:AppBar(
        title: Text('My first App'),
      ),
      body:index<questions.length?Quiz(buttonPressed,questions,index):
     Result(_result)
    ),);  
    }
}