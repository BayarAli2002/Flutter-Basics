import 'package:flutter/material.dart';
import 'screen1.dart';
class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  void SelectScreen(BuildContext ctx)
  {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_){
      return screen1();
    }));
  }
  Widget build(BuildContext context) {
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
        child: InkWell(
          onTap: (){SelectScreen(context);},
          child: Text("Go to Screen1",
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
