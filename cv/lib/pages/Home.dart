import 'package:cv/pages/programming.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static final Routs = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: null,
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "cv programming",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(color: Colors.black, blurRadius: 9)]),
              ),
              SizedBox(
                height: 100,
              ),
              Card(
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(App.Routs);
                  },
                  child: Text(
                    "  programming languages   ",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "  data structures   ",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "   algorithms   ",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
