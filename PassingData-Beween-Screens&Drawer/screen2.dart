import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {

  @override
  static const routeName = '/Bayar-Information';
  void SelectScreen(BuildContext ctx)
  {
    Navigator.of(ctx).pushReplacementNamed(
      screen2.routeName,
      arguments: {
        'id': 10,
        'name':'Bayar',
        'Age':22,
      },
    );
  }
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
            Text("${routeName['id']}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("${routeName['name']}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("${routeName['Age']}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: (){SelectScreen(context);},
              child: Text("Go to Screen1",
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
