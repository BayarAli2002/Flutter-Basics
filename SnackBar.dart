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
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(
                  color: Colors.black,
                  width: 4,
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                str = "";
              });
              buildSnackBar(context);
            },
            child: Text(
              "Show SnackBar",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }

  void buildSnackBar(BuildContext context) {
    final sBar = SnackBar(
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
            disabledBackgroundColor: Colors.pink,
            disabledTextColor: Colors.amber,
            textColor: Colors.black,
            label: "Undo!",
            onPressed: () {
              setState(() {
                str = "Flutter";
              });
            }),
        content: Text(
          "Show SnackBar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepOrange,
        duration: Duration(seconds: 3),
        dismissDirection: DismissDirection.endToStart,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.black,
            width: 3,
          ),
        ));
    ScaffoldMessenger.of(context).showSnackBar(sBar);
  }
}
