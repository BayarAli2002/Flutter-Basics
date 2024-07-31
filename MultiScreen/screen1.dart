import 'package:flutter/material.dart';
import 'package:bm/screen2.dart';
class screen1 extends StatelessWidget {
  const screen1({super.key});
  @override
  void SelectScreen(BuildContext ctx)
  {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_){
      return screen2();
    }));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Screen1",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: (){SelectScreen(context);},
          child: Text("Go to Screen2",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
    );
  }
}
