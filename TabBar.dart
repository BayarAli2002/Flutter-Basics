import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  static const routename = '/Bayar-Information';
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home is by default a route
      //we can simply Navigate to another screen by the route tag
      //flutter create a route by by default for this line => home: MyHomePage(),
      initialRoute: '/',
      routes: {
        //if the route tag was so long so we can stored in static variable
        '/': (context)=> MyHomePage(), //is originally route
        MyApp.routename: (context)=> screen1(),
        '/x2': (context)=> screen2(),
      },
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
  Navigator.of(ctx).pushNamed(
   n==1? MyApp.routename:'/x2',

  );

}
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.category,
                  color: Colors.black,
                ),
                text: "Part 1",
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
                text: "Part 2",
              ),
            ],
          ),
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
        body: Container(
          child: TabBarView(
            //We use the TabBar to display information in the same Screen
            //it means that we navigate on the same screen but with different information
            children: [
              Scaffold(
                body: Center(
                  child: Text("Screen 1",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Scaffold(
                body: Center(
                  child: Text("Screen 2",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          width: 280,
         child: ListView(
           //mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(
               height: 20,
             ),
             ListTile(
               onTap: ()=> SelectScreen(context,1),
               title: Container(
                 //alignment: Alignment.center,
                 child: Text("Go to Screen1",
                   style: TextStyle(
                     color: Colors.white70,
                     fontSize: 30,
                     fontWeight:FontWeight.bold,
                   ),
                 ),
               ),
               subtitle: Text("Subtitle 2",
                 style: TextStyle(
                   color: Colors.greenAccent,
                   fontSize: 20,
                   fontWeight:FontWeight.bold,
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
               onTap: ()=>SelectScreen(context,2),
               title:Container(
                 width: double.infinity,
                 child: Text("Go to Screen2",
                   style: TextStyle(
                     color: Colors.white70,
                     fontSize: 30,
                     fontWeight:FontWeight.bold,
                   ),
                 ),
               ),
               subtitle: Text("Subtitle 1",
                 style: TextStyle(
                   color: Colors.greenAccent,
                   fontSize: 20,
                   fontWeight:FontWeight.bold,
                 ),
               ),
               trailing: Icon(
                 Icons.arrow_forward_ios,
                 color: Colors.greenAccent,
               ),
             ),

           ],
         ),
        ),
        drawerScrimColor: Colors.greenAccent,//.withOpacity(0.8),
      ),
    );
  }
}
