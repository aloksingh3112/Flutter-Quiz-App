import 'package:flutter/material.dart';


class Result extends StatelessWidget{
   final int result;
   Result(this.result);

   String get getResult{
     var res='You did it';

     if(result<=10){
       res='You are awesome';

     }
     else if(result<=20){
       res='You are nice';
     }
     else{
        res='You are starnger';
     }
     return res;
   }

     Widget build(BuildContext ctx){
       return Center(
         child: Text(getResult,
           style: TextStyle(fontSize:36,fontWeight:FontWeight.bold ),
           textAlign: TextAlign.center,
         ),
         
      
       );
     }
}

