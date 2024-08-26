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

  @override
  Widget build(BuildContext context) {
    //CTRL+F  => search
    //SHIFT + End => select to the end of the line
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Flutter",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: buildTextButton(),
      ),
    );
  }

  TextButton buildTextButton() {
    return TextButton(
        onPressed: () {
          Fluttertoast.showToast(
            msg: "Hello Flutter",
            textColor: Colors.pink,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.amber,
            fontSize: 40,
            timeInSecForIosWeb: 1,
          );
        },
        child: buildRichText(),
      );
  }

  Widget buildRichText() {
    return RichText(
        text: TextSpan(
      children: [
        TextSpan(
          text: "Pink",
          style: TextStyle(
            color: Colors.pink,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: "/",
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: "Amber",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ));
  }
}
