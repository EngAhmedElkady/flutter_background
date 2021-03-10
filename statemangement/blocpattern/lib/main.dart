import 'package:blocpattern/blocpattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider<Blocpattern>(
      create: (context) => Blocpattern(5),
      child: Home(),
    ));
  }
}
