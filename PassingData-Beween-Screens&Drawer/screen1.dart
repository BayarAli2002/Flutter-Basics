import 'package:flutter/material.dart';
class screen1 extends StatelessWidget {
  @override
  void SelectScreen(BuildContext ctx)
  {
    Navigator.of(ctx).pushReplacementNamed(
      '/x2',
      arguments: {
        'id': 20,
        'name':'Huusien',
         'Age':26,
      },
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
            Text("${ModalArg['id']}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
        Text("${ModalArg['name']}",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
            Text("${ModalArg['Age']}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
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
