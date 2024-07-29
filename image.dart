import 'package:flutter/material.dart';
import 'package:index1/info.dart';
import 'package:intl/intl.dart';

//CTRL + / => to delete the comment and then return it
//SHIFT + TAB => to arrange the components ِ
//https://www.fontsquirrel.com/ this website for downloading fonts
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      title: "My Home Page",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: Colors.cyanAccent,
        primaryColorDark: Colors.black,
        fontFamily: 'AlexBrush',
        appBarTheme: AppBarTheme(
          color: Colors.deepPurpleAccent,
          titleTextStyle: TextStyle(
            fontFamily: 'AlexBrush',
            fontSize: 25,
          ),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: TextStyle(
                fontFamily: 'ChunkFive',
                fontSize: 25,
              ),
            ),
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
  Color w = Colors.white;
  Color b = Colors.black;
  final List<info> li = [
    info(name: "Bayar1", height: 120, date: DateTime.now()),
    info(name: "Bayar2", height: 130, date: DateTime.now()),
    info(name: "Bayar3", height: 140, date: DateTime.now()),
    info(name: "Bayar4", height: 150, date: DateTime.now()),
    info(name: "Bayar5", height: 160, date: DateTime.now()),
    info(name: "Bayar6", height: 160, date: DateTime.now()),
    info(name: "Bayar7", height: 160, date: DateTime.now()),
  ];

  void showBottomSheetMenu(BuildContext ctx) {
    showModalBottomSheet(
      backgroundColor: w,
      context: ctx,
      builder: (_) {
        return ListView.builder(
          itemCount: li.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                borderOnForeground: false,
                shadowColor: b,
                elevation: 10,
                //Theme.of(ctx).primaryColor => to bring the color from primaryColor
                color: Theme.of(ctx).primaryColor,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            li[index].name,
                            style: Theme.of(ctx).textTheme.titleMedium,
                          ),
                          Text(
                            "${li[index].height}",
                            style: Theme.of(ctx).appBarTheme.titleTextStyle,
                          ),
                        ],
                      ),
                      Text(
                        // DateFormat('yyyy/MMM/dd')
                        DateFormat().format(li[index].date),
                        style: TextStyle(
                          color: Theme.of(ctx).primaryColorDark,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          "App Bar",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        color: b,
        child: ListView(
          children: [
            Column(
              children: [
                Image.network(
                  "https://blog.back4app.com/wp-content/uploads/2021/08/flutter-vs-dart.png",
                  height: 300,
                  width: 500,
                  //fit: BoxFit.cover => take a part of the image
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  //this is the path of the Directory that I've created in my projects
                  "assets/images/bayar.jpg",
                  //fit: BoxFit.cover => take a part of the image
                  height: 600,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
        //we can put the
        onPressed: () => showBottomSheetMenu(context),
      ),
    );
  }
}

