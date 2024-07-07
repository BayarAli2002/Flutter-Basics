import 'dart:io';
class AgeCalculator{
  static var age;
  AgeCalculator(int p)
  {
    print("Enter your Birthyear");
    var birthyear = p as int;
     age = DateTime.now().year - birthyear;
    print("Your Birthyear is $age");
  }
}