import 'package:coffee/Screans/customize.dart';
import 'package:coffee/Screans/final.dart';
import 'package:coffee/Screans/how_many.dart';
import 'package:coffee/statemangement/statemangement.dart';
import 'package:flutter/material.dart';

import 'Screans/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        initialRoute: Home.Routs,
        routes: {
          Home.Routs: (c) => Home(),
          '2': (c) => Order(),
          '3': (c) => Customize(),
          '4': (c) => Finalll(),
        },
        title: "Coffee",
      ),
    );
  }
}
