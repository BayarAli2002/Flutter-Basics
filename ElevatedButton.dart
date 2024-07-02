import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return MyAppState();
  }
}

class MyAppState extends State{
  var str = "";
  var temp = Colors.yellowAccent;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("App Bar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.combine([TextDecoration.overline]),
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 2,
            shadows: <Shadow>[
             Shadow(
               offset: Offset(5,5),
               blurRadius: 10,
               color: Colors.deepPurpleAccent,
             ),
              Shadow(
                offset: Offset(5,5),
                blurRadius: 10,
                color: Colors.deepPurpleAccent,
              ),
            ],
          ),
          ),
          backgroundColor: temp,

        ),
        body: Container(
          alignment: Alignment.center,
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(str,
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
            ),
            SizedBox(
              height: 50,
              width: 0,
            ) ,
//Here we use ElevatedButton instead of RaisedButton
          ElevatedButton(
            autofocus: true,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              shadowColor: Colors.deepOrange,
              padding: EdgeInsets.all(20),

            ),
            // we call this =>   () {}  lambda function
              onPressed: (){
                setState(() {
                  str = "CS";
                  temp = Colors.cyanAccent;
                });
              }


              , child: Text("ClickMe!",
          style: TextStyle(

            fontSize: 25,
          ),
          ),
            onLongPress: ()=>
            setState(() {
              str="";
              temp = Colors.cyanAccent;
            })
            ,
          ),
            SizedBox(
              height: 50,
              width: 0,
            ) ,
            ElevatedButton(
              autofocus: true,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shadowColor: Colors.deepOrange,
                padding: EdgeInsets.all(20),

              ),
              // we call this =>   () {}  lambda function//every update in the app must be inside the function setState()
              onPressed: (){
                setState(() {
                  str = "IT";
                  temp = Colors.purpleAccent;
                });
              }

              , child: Text("ClickMe!",
              style: TextStyle(

                fontSize: 25,),
            ),


            ),
    //used to create distance between the controls

          ],
        ),
        )

      ),
    );
  }
}