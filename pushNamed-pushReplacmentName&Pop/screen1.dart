import 'package:flutter/material.dart';
import 'screen2.dart';
import 'main.dart';
import 'drawer.dart';
class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ModalArg =  ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>? ?? {};
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
               fontSize: 30,
               fontWeight: FontWeight.bold,
             ),
           ),
            Text("${ModalArg['name']}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      //drawer: MyDrawer(),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.greenAccent,
      onPressed: (){
        //We can pass any value in the pop function and then print these values in any place
        //The paased value goes to the .then function
        Navigator.of(context).pop(MyApp.routename);
      },
      child: Icon(
        color: Colors.black,
        Icons.delete,
      ),
    ),
    );
  }
}
