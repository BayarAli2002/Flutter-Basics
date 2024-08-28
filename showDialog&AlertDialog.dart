import 'package:flutter/material.dart';
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
  Widget myText(String str) {
    return Text(str);
  }

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
          "Flutter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: buildElevatedButton(context),
      ),
    );
  }

  ElevatedButton buildElevatedButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          final AlertDialog alert = AlertDialog();
          showDialog(
              barrierDismissible: false,
              barrierColor: Colors.cyanAccent,
              context: context,
              builder: (BuildContext ctx) {
                return AlertDialog(
                  title: Text("Flutter"),
                  content: Container(
                    height: 150,
                    child: Column(
                      children: [
                        Divider(
                          thickness: 1.5,
                          color: Colors.black,
                        ),
                        Text("Hello my name is Bayar Kamal ALi"),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.black,
                              side: BorderSide(
                                color: Colors.black,
                                width: 3,
                                style: BorderStyle.solid,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                              onPressed: (){
                               Navigator.of(context).pop();
                              },
                              child: Text("Close!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        child: Text(
          "Click Me!",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }
}
