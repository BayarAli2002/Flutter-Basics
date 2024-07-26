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
    info(name: "Bayar6", height: 160, date: DateTime.now()),
    info(name: "Bayar7", height: 160, date: DateTime.now()),
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
//We must put the SingleChildScrollerView inside the Widget that contains the whole Elements
        child: ListView.builder(
          itemCount: li.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(5),
              child: Card(
                shadowColor: w,
                elevation: 70,
                color: Colors.cyanAccent,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            li[index].name,
                            style: TextStyle(
                              color: b,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${li[index].height}",
                            style: TextStyle(
                              color: b,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "${li[index].date}",
                        style: TextStyle(
                          color: b,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          //ListView = Column + SingleChildScrollerView
          //ListView.builder() => only load what's visible
        ),
      ),
    );
  }
}
