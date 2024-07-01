import 'package:flutter/material.dart';

//Flutter has the ability to update each pixel inside the app
//So we have to identify which pixel to update
void main() {
  runApp(MyApp());
}

//StatelessWidget doesn't update the information inside the app
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//this class inherits the state from StatefullWidget
// =>   _underscore  means that the class is private
class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _increamentCounter() {
    setState(() {
      _counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Flutter App",
              style: Theme.of(context).textTheme.displayMedium
              ),

              Text(
                "$_counter",
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
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
