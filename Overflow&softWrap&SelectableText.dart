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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectableText("Hello I'm Bayar",
           showCursor: true,
            cursorColor: Colors.deepOrange,
            cursorWidth: 4,
            //When we crate an object of the => toolbarOptions it assign all the values to false
            //this Widget was Deperacated
            toolbarOptions: ToolbarOptions(
             copy: true,
              cut: true,
              paste: true,
              selectAll: true,
            ),
            //we can use contextMenuBuilder instead of toolbarOptions
          ),
          SizedBox(height: 8,),
          Container(
            width: 400,
            height: 45,
            color: Colors.green,
            child: Text(
              "This Is A Clipped Text,This Is A Clipped Text,This Is A Clipped Text,This Is A Clipped Text,",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.clip,
              softWrap: false,
            ),
          ),
          SizedBox(height: 8,),
          Container(
            width: 400,
            height: 45,
            color: Colors.green,
            child: Text(
              "This Is A Clipped Text,This Is A Clipped Text,This Is A Clipped Text,This Is A Clipped Text,",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8,),
          Container(
            width: 400,
            height: 45,
            color: Colors.green,
            child: Text(
              "This Is A Clipped Text,This Is A Clipped Text,This Is A Clipped Text,This Is A Clipped Text,",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.fade,
            ),
          ),
          SizedBox(height: 8,),
          Container(
            width: 400,
            height: 45,
            color: Colors.green,
            child: Text(
              "This Is A Clipped Text,This Is A Clipped Text,This Is A Clipped Text,This Is A Clipped Text,",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.visible,

            ),
          ),
        ],
      ),
    );
  }


}
