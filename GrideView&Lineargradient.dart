import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      title: "MyTitle",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
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
  Widget info(String title, Color color) {
    return Container(
      padding: EdgeInsets.all(65),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            color,
            color.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: Text(
          "Kamal Family",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w900,
            fontFamily: "AlexBrush",
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: GridView(
          children: [
            info("title1", Colors.greenAccent),
            info("title2", Colors.cyanAccent),
            info("title3", Colors.purpleAccent),
            info("title4", Colors.pinkAccent),
            info("title5", Colors.amberAccent),
            info("title6", Colors.brown),
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //these options set the settings of the GrideView Controll
            maxCrossAxisExtent: 200,
            childAspectRatio: 1,
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
          ),
        ),
      ),
    );
  }
}
