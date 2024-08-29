import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      title: "My Title",
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
  String str = "Flutter";

  Widget iconBuild(IconData data) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          data,
          size: 30,
          color: Colors.white,
        ));
  }

  @override
  Widget build(BuildContext context) {
    //CTRL+F  => search
    //SHIFT + End => select to the end of the line
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 4),
          child: Row(
            children: [
              iconBuild(Icons.add_a_photo_outlined),
              Expanded(
                child: iconBuild(Icons.account_circle),
              ),
            ],
          ),
        ),
        actions: [
          iconBuild(Icons.alarm),
          iconBuild(Icons.phone_bluetooth_speaker),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurpleAccent,
                Colors.pink,
                Colors.deepPurpleAccent,
              ],
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          str,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
          onPressed: () {
            setState(() {
              str = "";
            });
            buildFlushbar(context);
          },
          child: Text(
            "Show FlushBar",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void buildFlushbar(BuildContext context) {
    Flushbar(
      flushbarPosition: FlushbarPosition.BOTTOM,
      mainButton: IconButton(
        splashColor: Colors.white,
        onPressed: () {
          setState(() {
            str = "Flutter";
            Navigator.of(context).pop();
          });
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.deepOrange,
        ),
      ),
      margin: EdgeInsets.all(5),
      icon: Icon(
        Icons.add_alert,
        color: Colors.deepOrange,
      ),
      title: "this is the title",
      titleColor: Colors.deepOrange,
      titleSize: 25,
      /* message: "this is a title",*/
      messageColor: Colors.white,
      messageSize: 20,
      duration: Duration(seconds: 5),
      messageText: Text(
        "this is the message",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ).show(context);
  }
}
