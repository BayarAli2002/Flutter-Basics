import 'dart:ui';

import 'package:flutter/material.dart';
import 'Spliting-App.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      title: "My Title",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State {
  TextStyle s1 = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: Text(
          "App Bar",
          style: appbarstyle,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          //We can also use Alignment methode instead of AlignmentDirectional
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              height: 400,
              width: 400,
              color: Colors.cyan,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyText("Row1", s1),
                      MyText("Row1", s1),
                      MyText("Row1", s1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyText("Row2", s1),
                      MyText("Row2", s1),
                      MyText("Row2", s1),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
