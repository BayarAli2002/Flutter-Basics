import 'package:flutter/material.dart';
import 'main.dart';
import 'screen1.dart';
import 'drawer.dart';
class screen2 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    final routeName = ModalRoute.of(context)?.settings.arguments as Map<String,Object>? ?? {};
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Screen2",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
      //if we want to the show a specific page only on time
      //just make the drawer comment
      drawer: MyDrawer(),
    );
  }
}
