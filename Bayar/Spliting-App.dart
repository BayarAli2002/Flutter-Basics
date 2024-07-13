import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle appbarstyle = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
  color: Colors.black,
);

TextStyle textstyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
  color: Colors.black,
);

class MyText extends StatelessWidget {
  String str;
  TextStyle text;

  MyText(this.str, this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      str,
      style: text,
    );
  }
}
