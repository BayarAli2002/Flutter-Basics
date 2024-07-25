import 'package:flutter/material.dart';
import 'package:index1/info.dart';
import 'info.dart';

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
  Color w = Colors.white;
  Color b = Colors.black;
  final List<info> li = [
    info(name: "Bayar1", height: 120, date: DateTime.now()),
    info(name: "Bayar2", height: 130, date: DateTime.now()),
    info(name: "Bayar3", height: 140, date: DateTime.now()),
    info(name: "Bayar4", height: 150, date: DateTime.now()),
    info(name: "Bayar5", height: 160, date: DateTime.now()),
  ];
  final info x1 = info(name: "Bayar1", height: 120, date: DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
        title: Text(
          "App Bar",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: b,
        child: Column(
          children: [
            //map function converts a list of objects to a list of Widgets
            //and after that we can show the date easily in our App
            //it works like the loop the val parameter store each object value
            ...li.map((val) {
              return Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          val.name,
                          style: TextStyle(
                            color: w,
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          "${val.height}",
                          style: TextStyle(
                            color: w,
                            fontSize: 35,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${val.date}",
                      style: TextStyle(
                        color: w,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
