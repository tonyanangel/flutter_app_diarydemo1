import 'package:flutter/material.dart';
import 'diary_home.dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diary',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black,fontFamily: "Aveny")),
        textTheme: TextTheme(title: TextStyle(color: Colors.black)),
      ),
      home: new DiaryHome(),
    );
  }
}
