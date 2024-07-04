import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  var VisiblePassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Admin App",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              shadows: <Shadow>[
                Shadow(
                  color: Colors.black,
                  offset: Offset(5,5),
                  blurRadius: 5,
                ),
                Shadow(
                  color: Colors.black,
                  offset: Offset(8,8),
                  blurRadius: 5,
                ),
              ],


            ),
          ),
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
//Container is a widget so we have to write the codes inside the child
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(10),
                //we have to create a container for each TextField
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "TextField",
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: "Please Enter a Text",
                    hintStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          shadows: <Shadow>[
                            Shadow(
                              color: Colors.cyan,
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                            Shadow(
                              color: Colors.cyan,
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        hintText: "Please Enter your name",
                        hintStyle: TextStyle(
                          fontSize: 20,
                        ),
                        prefixIcon: Icon(
                          Icons.accessibility_new_rounded,
                          size: 35,
                          color: Colors.cyan,
                        ),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Please Enter your Email",
                        hintStyle: TextStyle(
                          fontSize: 20,
                        ),
                        prefixIcon: Icon(
                          Icons.account_circle,
                          size: 35,
                          color: Colors.cyan,
                        ),
                        labelStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          shadows: <Shadow>[
                            Shadow(
                              color: Colors.cyan,
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                            Shadow(
                              color: Colors.cyan,
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      obscureText: VisiblePassword,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                VisiblePassword = !VisiblePassword;
                              });
                            },
                            icon: Icon(
                              color: Colors.cyan,
                              size: 35,
                              VisiblePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                            shadows: <Shadow>[
                              Shadow(
                                color: Colors.cyan,
                                offset: Offset(2, 2),
                                blurRadius: 5,
                              ),
                              Shadow(
                                color: Colors.cyan,
                                offset: Offset(2, 2),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          hintText: "Pleaae Enter your Password",
                          hintStyle: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          labelText: "PhoneNumber",
                          labelStyle: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                            shadows: <Shadow>[
                              Shadow(
                                color: Colors.cyan,
                                offset: Offset(2, 2),
                                blurRadius: 5,
                              ),
                              Shadow(
                                color: Colors.cyan,
                                offset: Offset(2, 2),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          prefixIcon: Icon(
                            Icons.add_call,
                            color: Colors.cyan,
                            size: 35,
                          ),
                          hintText: "Please Enter your PhoneNumber"),
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
