import 'package:app8/Age.dart';
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
  var str = 0;
  var mycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          )
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
        ),
        body: Container(

         child: SingleChildScrollView(
           child: Column(
             children: <Widget>[
               SizedBox(
                 height: 40,
               ),
               Container(
                 margin: EdgeInsets.all(10),
                 child:  TextField(
                   controller: mycontroller,
                   decoration: InputDecoration(
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                       borderSide: BorderSide(
                         color: Colors.black,
                         width: 4,
                         style: BorderStyle.solid,
                       ),
                     ),
                     fillColor: Colors.deepPurpleAccent,
                     filled: true,
                     labelText: "BirthYear",
                     labelStyle: TextStyle(
                       color: Colors.cyan,
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                       fontStyle: FontStyle.italic,

                       shadows: <Shadow>[
                         Shadow(
                           color: Colors.black,
                           offset: Offset(3,3),
                           blurRadius: 5,
                         ),
                         Shadow(
                           color: Colors.black,
                           offset: Offset(3,3),
                           blurRadius: 5,
                         ),
                       ],
                     ),
                     hintText: "Please Enter your BirthYear",
                     hintStyle: TextStyle(
                       color: Colors.cyan,
                       fontStyle: FontStyle.italic,
                       fontWeight: FontWeight.bold,

                     ),
                  prefixIcon: Icon(
                   Icons.date_range,
                   size: 30,
                   color: Colors.black,
                  ),
                   ),
                   keyboardType: TextInputType.number,
                 ),
               ),
               SizedBox(
                 height: 40,
               ),
               Container(
                 child: TextButton(
                   onPressed: () =>
                     setState(() {
                    AgeCalculator(int.parse(mycontroller.text));
                     str  = AgeCalculator.age;
                     }),

                   style: TextButton.styleFrom(
                     backgroundColor: Colors.black,
                     foregroundColor: Colors.deepPurpleAccent,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30),
                       side: BorderSide(
                         color: Colors.deepPurpleAccent,
                         width: 4,
                         style: BorderStyle.solid,
                       ),
                     ),
                   ),
                   child: Text("Get Value",
                     style: TextStyle(
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                       fontStyle: FontStyle.italic,
                     ),
                   ),
                 ),
               ),
               SizedBox(
                 height: 30,
               ),
               Container(
                 child: Text("Your age is $str",
                 style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                   color: Colors.deepPurpleAccent,
                 ),
                 ),
               ),
             ],
           ),
         ),

        ),

      ),
    );
  }
}