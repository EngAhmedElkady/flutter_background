import 'dart:html';

import 'package:askfm/pages/page1.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey[800],
        child: Column(
          children: [
            Text(
              "MY linkes",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Expanded(
                child: RaisedButton(
                    child: Text(
                      "goodreads",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.start,
                    ),
                    onPressed: () async {
                      await launch(
                          "https://www.goodreads.com/user/show/119511785-ahmed-elkady");
                    }),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: RaisedButton(
                    child: Text(
                      "Linked in",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.start,
                    ),
                    onPressed: () async {
                      await launch(
                          "https://www.linkedin.com/in/ahmed-elkady1/");
                    }),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: RaisedButton(
                    child: Text(
                      "GitHub",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.start,
                    ),
                    onPressed: () async {
                      await launch("https://github.com/EngAhmedElkady");
                    }),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: RaisedButton(
                    child: Text(
                      "cv",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.start,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (c) => Page1()));
                    }),
              ),
            ]),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue[900],
                    child: Column(
                      children: [
                        Text(
                          "Infomation",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                          textAlign: TextAlign.start,
                        ),
                        Image.asset("askfm\image\1.jpg"),
                        Text("name : Ahmed Elkady")
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Text(
                          "Infomation",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Text(
                          "Infomation",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
