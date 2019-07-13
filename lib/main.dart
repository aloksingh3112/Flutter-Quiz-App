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
  var data=['first question one ','second question one','third component'];
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
          Question(data[index]),
         Answer(buttonPressed),
          Answer(buttonPressed)
        ],
      ),
    ),);  
    }
}