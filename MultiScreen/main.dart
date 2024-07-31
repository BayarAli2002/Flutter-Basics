import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
void SelectScreen(BuildContext ctx,int n)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    if(n==1)
    return screen1();
    return screen2();
  }));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Main Screen",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //InkWell works like the Button
      //the BuildContext context tell use the place of the screen and it wroks like pointer
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: ()=> SelectScreen(context,1),
            child: Container(
              alignment: Alignment.center,
              child: Text("Go to Screen1",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight:FontWeight.bold,
                ),
              ),
            ),
          ),
         SizedBox(
           height: 30,
         ),
          InkWell(
           onTap: ()=>SelectScreen(context,2),
            child:Container(
              child: Text("Go to Screen2",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight:FontWeight.bold,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
