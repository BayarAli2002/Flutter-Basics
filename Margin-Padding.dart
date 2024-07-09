import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      title: "My App Bar",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Bar",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Container(
//margin is the distance between the App and the it's content
        //margin: EdgeInsets.all(10),
        //margin: EdgeInsets.fromLTRB(10, 20, 20,0),
        /*
        margin: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
         */
        margin: EdgeInsets.only(top: 20),
        //Padding is the distance between the the text inside the container and it's Edge
        padding: EdgeInsets.all(10),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(right: 20),
              child: Text(
                "Row1",
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Row2",
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
