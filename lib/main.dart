import 'package:bmi/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//rewrwrwr
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyAppOne() ,
    );
  }


}

class MyAppOne extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
   return MyAppTwo();
  }

}

class MyAppTwo extends State<MyAppOne>
{
  @override
  Widget build(BuildContext context) {
   return HomePage();
  }

}
