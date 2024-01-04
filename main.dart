

import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculator.dart';

void main(){
    runApp(myApp());
}

class myApp extends StatelessWidget{
     @override
  Widget build(BuildContext context) {
   
       return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
             home: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text(
                  'Calculator',
                  style: TextStyle(
                    color: Colors.white70,
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    fontWeight:FontWeight.w400,
                  ),
                ),
                actions: [
                  IconButton(onPressed: (){

                  } , icon: Icon(Icons.refresh)),
                ],
              ),
               body: Calculator(),
             ),
       );
  }
}