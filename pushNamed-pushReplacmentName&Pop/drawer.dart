import 'package:flutter/material.dart';
import 'main.dart';
import 'screen1.dart';
import 'screen2.dart';
class MyDrawer extends StatelessWidget {

dynamic? str;
   void SelectScreen(BuildContext ctx, int n) {
    if(n==2)
      {
        Navigator.of(ctx).pushNamed(
          arguments: {
            'id':12,
            'name':'bayar'
          },

          MyApp.routename,
        ).then( (value){
          str = value;
        }
        );
      }
    else {
      //We use pushReplacementNamed to navigate to a screen without returning to the previous page
      Navigator.of(ctx).pushReplacementNamed(
        n == 1 ? '/' : '/x2',
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      width: 280,
      child: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () => SelectScreen(context, 1),
            title: Container(
              width: double.infinity,
              child: Text(
                "Go to main",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              "Subtitle 1",
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.greenAccent,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            onTap: () => SelectScreen(context, 2),
            title: Container(
              //alignment: Alignment.center,
              child: Text(
                "Go to Screen1",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              "Go to Screen 1",
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.greenAccent,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            onTap: () => SelectScreen(context, 3),
            title: Container(
              width: double.infinity,
              child: Text(
                "Go to Screen2",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(
              "Subtitle 1",
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.greenAccent,
            ),
          ),


        ],
      ),
    );
  }
}
