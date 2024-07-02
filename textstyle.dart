import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _increamentCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          backgroundColor: Colors.cyan,
          foregroundColor: Color.fromRGBO(255, 255, 255, 1),
        ),
//Inside the body there is only one container
//inside the container there is only one child

        body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Text(
            "Body Text",
            style: TextStyle(
              color: Colors.red,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              //w400 => normal  w900 => the most thick
              fontStyle: FontStyle.italic,
              height: 0,
              shadows: <Shadow>[
                //Shadow is list so we have to create a list first
                Shadow(
                  color: Colors.black,
                  offset: Offset(6, 7),
                  blurRadius: 15,
                ),
//we can create more than one shadow
                Shadow(
                  color: Colors.black,
                  offset: Offset(6, 7),
                  blurRadius: 15,
                ),
              ],
              decoration: TextDecoration.combine(
                  [TextDecoration.overline, TextDecoration.underline]),
              decorationColor: Colors.blue,
              decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 1.5,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _increamentCounter,
          backgroundColor: Colors.cyan,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
