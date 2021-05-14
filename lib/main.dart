import 'package:binanceapi/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
