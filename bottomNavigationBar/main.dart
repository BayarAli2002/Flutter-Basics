import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        '/': (context) => MyHomePage(), //is originally route
        MyApp.routename: (context) => screen1(),
        '/x2': (context) => screen2(),
      },
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
  final List<Map<String, dynamic>> pages = [
    {
      'page': Scaffold(
        body: Center(
          child: Text(
            "Screen 1",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      'title': 'page 1'
    },
    {
      'page': Scaffold(
        body: Center(
          child: Text(
            "Screen 2",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      'title': 'part2'
    },
  ];

  void SelectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed(
      n == 1 ? MyApp.routename : '/x2',
    );
  }

  int SelectedIndex = 0;

  void _x1(int index) {
    setState(() {
      SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
          title: Text(
            pages[SelectedIndex]['title'],
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //InkWell works like the Button
        //the BuildContext context tell use the place of the screen and it wroks like pointer
        body: pages[SelectedIndex]['page'],
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
                onTap: () => SelectScreen(context, 1),
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
                  "Subtitle 2",
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
        ),
        drawerScrimColor: Colors.greenAccent,
        //.withOpacity(0.8),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _x1,
          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.white,
          selectedFontSize: 20,
          unselectedFontSize: 15,
          useLegacyColorScheme: true,
          currentIndex: SelectedIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.category,
                // color: Colors.greenAccent,
              ),
              label: "Part 1",
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.favorite,
                  //color: Colors.greenAccent,
                ),
                label: "Part 2"),
          ],
        ),
      ),
    );
  }
}
