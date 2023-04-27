import 'package:flutter/material.dart';

import 'Screens/homescreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:const  Color(0xffe1e3e0),
        primaryColor:const  Color(0xffbf202b),
      ),
      home: const HomeScreen(),
    );
  }
}
