import 'package:flutter/material.dart';
import 'package:tempetther/login.dart';
import 'package:tempetther/setting.dart';

import 'Home.dart';
import 'home2.dart';
import 'home3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyApp1.Routs,
      routes: {
        Home.Routs: (c) => Home(),
        Home2.Routs: (c) => Home2(),
        Home3.Routs: (c) => Home3(),
        Setting.Routs: (c) => Setting(),
        MyApp1.Routs: (c) => MyApp1(),
      },
    );
  }
}
