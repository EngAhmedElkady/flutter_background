import 'package:flutter/material.dart';
import 'package:foodui/pages/Home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food_App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Home_page(),
    );
  }
}
