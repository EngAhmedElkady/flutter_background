import 'package:cv/pages/Home.dart';
import 'package:cv/pages/programming.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey[800],
      initialRoute: Home.Routs,
      routes: {
        Home.Routs: (c) => Home(),
        App.Routs: (c) => App(),
      },
    );
  }
}
