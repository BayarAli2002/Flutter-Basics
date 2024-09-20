import 'package:flutter/material.dart';

class Provider_pro with ChangeNotifier{
  int counter=0;
  void increament(){
    counter++;
    notifyListeners();
  }

}