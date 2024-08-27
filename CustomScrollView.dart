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
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
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
            SliverList(
              delegate: SliverChildListDelegate([
                //body components
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
