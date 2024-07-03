import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  var str = "";
  var temp = Colors.yellowAccent;
  var text = "ClickMe";
  var counter = 0;
  var container = Colors.white;

  void increamentCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "App Bar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.combine([TextDecoration.overline]),
              decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 2,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(5, 5),
                  blurRadius: 10,
                  color: Colors.deepPurpleAccent,
                ),
                Shadow(
                  offset: Offset(5, 5),
                  blurRadius: 10,
                  color: Colors.deepPurpleAccent,
                ),
              ],
            ),
          ),
          backgroundColor: temp,
        ),
        body: Container(
          color: container,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$counter",
                style: Theme.of(context).textTheme.displayMedium,
              ),

              SizedBox(
                height: 30,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  disabledBackgroundColor: Colors.blue,
                  backgroundColor: Colors.purpleAccent,
                  foregroundColor: Colors.black,
                  iconColor: Colors.purple,
                  padding: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                    side: BorderSide(
                      color: Colors.black,
                      width: 4,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                // onPressed: null, => means that the button is disabled
                onPressed: () {
                  setState(() {
                    text = "TextButton";
                  });
                },

                onLongPress: () {
                  setState(() {
                    text = "OOPS";
                  });
                },
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),

              SizedBox(
                height: 50,
                width: 0,
              ),
              Text(
                str,
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 50,
                width: 0,
              ),
//Here we use ElevatedButton instead of RaisedButton
              ElevatedButton(
                autofocus: true,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.cyan,
                  shadowColor: Colors.deepOrange,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    side: BorderSide(
                      color: Colors.lightGreen,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                // we call this =>   () {}  lambda function
                onPressed: () {
                  setState(() {
                    str = "CS";
                    temp = Colors.cyanAccent;
                    container = Colors.white;
                  });
                },
                child: Text(
                  "ClickMe!",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                onLongPress: () => setState(() {
                  str = "";
                  temp = Colors.cyanAccent;
                }),
              ),

              SizedBox(
                height: 50,
                width: 0,
              ),
              ElevatedButton(
                autofocus: true,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.deepOrange,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                    side: BorderSide(
                      color: Colors.cyan,
                      width: 5,
                    ),
                  ),
                ),
                // we call this =>   () {}  lambda function//every update in the app must be inside the function setState()
                onPressed: () {
                  setState(() {
                    str = "IT";
                    temp = Colors.purpleAccent;
                  });
                },
                child: Text(
                  "ClickMe!",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              //used to create distance between the controls
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              counter++;
              container = Colors.greenAccent;
            });
          },
          label: Text(
            "Add",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          icon: Icon(
            Icons.access_alarms_sharp,
            size: 30,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
