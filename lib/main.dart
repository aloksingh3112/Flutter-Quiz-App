import 'package:flutter/material.dart';


import './question.dart';
import './answer.dart';

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
  var questions=[
    {
       'question':'What is your name',
       'answers':['alok','avinash','sidhant']
   },
  {
       'question':'What is your pet name',
       'answers':['dog','cat','cow']
   },
   {
       'question':'What is your nick name',
       'answers':['gg','golu','ss']
   },
  ];
  buttonPressed(){
    setState(() {
       index=index+1;
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
      appBar:AppBar(
        title: Text('My first App'),
      ),
      body:Column(
        children: [
          Question(questions[index]['question']),
         ...(questions[index]['answers'] as List<String>).map((answer){
           return Answer(buttonPressed,answer);
         }).toList()

         
        ],
      ),
    ),);  
    }
}