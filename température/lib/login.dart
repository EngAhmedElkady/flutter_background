import 'package:flutter/material.dart';

class MyApp1 extends StatefulWidget {
  static final Routs = "0";
  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            margin: EdgeInsets.only(top: 40, left: 10, right: 10),
            height: double.infinity,
            width: double.infinity,
            //  color: Colors.grey,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "Enter your Data",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                Text("Enter you name"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
