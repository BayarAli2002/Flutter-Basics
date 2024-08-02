import 'package:flutter/material.dart';
class screen1 extends StatelessWidget {
  @override
  void SelectScreen(BuildContext ctx)
  {
    Navigator.of(ctx).pushReplacementNamed(
      '/x2',

    );
  }
  Widget build(BuildContext context) {
    final ModalArg =  ModalRoute.of(context)?.settings.arguments as Map<String,Object>? ?? {};
    ModalArg['id'];
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){SelectScreen(context);},
              child: Text("Go to Screen2",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
