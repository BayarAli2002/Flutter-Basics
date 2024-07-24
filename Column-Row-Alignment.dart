import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      title: "My Home Page",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color b = Colors.black;
  Color cy = Colors.cyan;
  Color w = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: cy,
        title: Text(
          "App Bar",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
      ),
//The Container takes the space according to the needs
      body: Container(
        //we use width with Column and height with Row
        //width: double.infinity,
        color: b,
        child: Row(
          //MainAxisAlignment for the columns is the y axis
          mainAxisAlignment: MainAxisAlignment.center,
          //CrossAxisAlignment for the columns is the x axis
          //stretch takes the entire width space according the Column
          //stretch takes the entire height space according the Row
          //CrossAxisAlignment doesn't effect on the Rows
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "text1text1",
              style: TextStyle(
                fontSize: 25,
                color: w,
              ),
            ),
            Text(
              "text2",
              style: TextStyle(
                fontSize: 25,
                color: w,
              ),
            ),
            //Container takes only one Widget/Child
            //We can change the alignment inside the container by using style or alignment
            //flexible width and height
            //-------------------------------------------------------------------------------------------------
            //Column and Row takes list of Widgets/Childs
            //We can change the alignment inside them only by using mainAxisAlignment and  crossAxisAlignment
            //always takes the full available width or height
          ],
        ),
      ),
    );
  }
}
