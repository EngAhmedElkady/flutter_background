import 'package:education_system/screans/Home.dart';
import 'package:education_system/screans/screen1(login).dart';
import 'package:education_system/screans/screen3(sign_up).dart';
import 'package:flutter/material.dart';

import 'screans/groups.dart';
import 'screans/student_registeration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '1',
      routes: {
        '1': (context) => Home(),
        '5': (context) => Students(),
      },
      title: "System_Education",
    );
  }
}
