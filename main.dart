import 'package:flutter/material.dart';
//Everything in Flutter is a Widget

//there three types of Widgets
/*
1- Visible Widget like Text,RaisedButton
2- Invisible Widget such as Row,Column
3-Container
*/

void main() {
  //this function takes a Widget parameter
  runApp(MyApp());
}

//the most important part in MyApp is the Homepage
class MyApp extends StatelessWidget {
  //inside StatelessWidget Abstract Function so we have to implement the codes inside it
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //in MaterialApp we have many functions and attributes
      home: Scaffold(
        //Scaffold responsible of the structure of the Application
        appBar: AppBar(
          title: Text("App Bar"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        // body: Text("First App"),

        /* body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           //many texts
           Text("App Bar1"),
           Text("App Bar2"),
           Text("App Bar3"),
         ],
       ),
       */
        body: Container(
          alignment: Alignment.center,
          color: Colors.cyan,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Flutter"),
              Text("App Dart"),
            ],
          ),
        ),
      ),
    );
  }
}
