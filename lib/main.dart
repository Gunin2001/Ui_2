import 'package:flutter/material.dart';
import 'package:ui_2/MainUI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.grey,
        backgroundColor: Colors.black12
      ),
      home: MainUI(),
    );
  }
}

