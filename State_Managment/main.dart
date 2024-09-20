import 'package:flutter/material.dart';
import 'package:my_provider/provider_p.dart';
import 'package:provider/provider.dart';
import 'dashboard.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create: (ctx)=> Provider_pro(),
          child: CounterPro(),
      ),
    );
  }
}

class CounterPro extends StatefulWidget {
  const CounterPro({super.key});

  @override
  State<CounterPro> createState() => _MyAppState();
}

class _MyAppState extends State<CounterPro> {
  //setState() call the Build function every time we are clicking on the floating action button
  //provider is the root parent of all the widgets
  //provider used to store a stateq
  int n=0;
  @override
  Widget build(BuildContext context) {
    print("n=$n");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Demo",
          style: TextStyle(
            fontSize: 25,
            fontWeight:FontWeight.bold,
          ),
        ),
      ),
      body: dashboard(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
        Provider.of<Provider_pro>(context,listen: false).increament();
        },
        child: Icon(Icons.add,),
      ),
    );
  }
}
