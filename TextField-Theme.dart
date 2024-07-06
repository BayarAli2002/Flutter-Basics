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
  var temp = Colors.cyan;
  var tempicon = Colors.cyan;
  var b = Colors.black;
  var dark = Colors.black;
  var light = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              shadows: <Shadow>[
                Shadow(
                  color: Colors.black,
                  offset: Offset(-4, -4),
                  blurRadius: 5,
                ),
                Shadow(
                  color: Colors.black,
                  offset: Offset(4, 4),
                  blurRadius: 5,
                ),
                Shadow(
                  color: Colors.black,
                  offset: Offset(7, 7),
                  blurRadius: 5,
                ),
              ],
            ),
          ),
          backgroundColor: temp,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
//Container is a widget so we have to write the codes inside the child
        body: Container(
            color: dark,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.cyanAccent,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  width: 4,
                                  color: Colors.cyan,
                                  style: BorderStyle.solid,
                                )),
                            labelText: "Name",
                            labelStyle: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              shadows: <Shadow>[
                                Shadow(
                                  color: tempicon,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                ),
                                Shadow(
                                  color: tempicon,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            hintText: "Please Enter your name",
                            hintStyle: TextStyle(
                              color: Colors.cyan,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                            prefixIcon: Icon(
                              Icons.accessibility_new_rounded,
                              size: 35,
                              color: tempicon,
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                          ),
                          keyboardType: TextInputType.name,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.cyanAccent,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.cyan,
                                  width: 4,
                                  style: BorderStyle.solid,
                                )),
                            labelText: "Email",
                            hintText: "Please Enter your Email",
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.cyan,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                            ),
                            prefixIcon: Icon(
                              Icons.account_circle,
                              size: 35,
                              color: tempicon,
                            ),
                            labelStyle: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              shadows: <Shadow>[
                                Shadow(
                                  color: tempicon,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                ),
                                Shadow(
                                  color: tempicon,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                          ),
                          style: TextStyle(
                            color: b,
                            fontWeight: FontWeight.w700,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextField(
                          obscureText: VisiblePassword,
                          decoration: InputDecoration(
                              fillColor: Colors.cyanAccent,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.cyan,
                                  width: 4,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    VisiblePassword = !VisiblePassword;
                                  });
                                },
                                icon: Icon(
                                  color: tempicon,
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
                                    color: tempicon,
                                    offset: Offset(2, 2),
                                    blurRadius: 5,
                                  ),
                                  Shadow(
                                    color: tempicon,
                                    offset: Offset(2, 2),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              hintText: "Pleaae Enter your Password",
                              hintStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.cyan,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.cyanAccent,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 4,
                                    style: BorderStyle.solid,
                                  )),
                              labelText: "PhoneNumber",
                              labelStyle: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                shadows: <Shadow>[
                                  Shadow(
                                    color: tempicon,
                                    offset: Offset(2, 2),
                                    blurRadius: 5,
                                  ),
                                  Shadow(
                                    color: tempicon,
                                    offset: Offset(2, 2),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              prefixIcon: Icon(
                                Icons.add_call,
                                color: tempicon,
                                size: 35,
                              ),
                              hintText: "Please Enter your PhoneNumber",
                              hintStyle: TextStyle(
                                color: Colors.cyan,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              )),
                          keyboardType: TextInputType.phone,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    //we have to create a container for each TextField
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.cyanAccent,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.cyan,
                            width: 4,
                            style: BorderStyle.solid,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.home,
                          color: tempicon,
                          size: 35,
                        ),
                        labelText: "Address",
                        labelStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          shadows: <Shadow>[
                            Shadow(
                              color: tempicon,
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                            Shadow(
                              color: tempicon,
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        hintText: "Please Enter your Address",
                        hintStyle: TextStyle(
                          color: Colors.cyan,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: TextStyle(
                        color: b,
                      ),
                      keyboardType: TextInputType.streetAddress,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: tempicon,
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          side: BorderSide(
                            color: tempicon,
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          temp = Colors.blue;
                          tempicon = Colors.blue;
                        });
                      },
                      onLongPress: () {
                        setState(() {
                          temp = Colors.cyan;
                          tempicon = Colors.cyan;
                        });
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: light,
          child: Icon(
            Icons.light_mode_sharp,
            color: dark,
          ),
          onPressed: () => (setState(() {
            //inline if
            dark = dark == Colors.black ? Colors.white : Colors.black;
            light = light == Colors.white ? Colors.black : Colors.white;
          })),
        ),
      ),
    );
  }
}
