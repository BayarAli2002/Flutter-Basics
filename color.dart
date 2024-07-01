import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  int counter = 0;

  void increamentCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
        ),
        body: Container(
          alignment: Alignment.center,
          //color: Colors.greenAccent,
          //RGB System
          //color: Color.fromRGBO(127, 239, 186, 1 ),
          //ARGB => a is the opacity
          //by increasing the number it becomes lighter
          //ARGB
          //color: Color.fromARGB(255,150,150,150),
          //hexadecimal colors system
          color: Color(0xff7FEFBA),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dart",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "$counter",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increamentCounter,
          backgroundColor: Colors.cyan,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
