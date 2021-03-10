import 'package:education_system/screans/screen1(login).dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String Routs = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text("go"),
      ),*/
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 410,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://image.freepik.com/free-vector/realistic-hand-drawn-back-school-background_52683-42951.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            funcontainer(context, "student"),
            SizedBox(
              height: 50,
            ),
            funcontainer(context, "professor"),
          ],
        ),
      ),
    );
  }

  Widget funcontainer(BuildContext context, String name) {
    Widget builder;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.green[900],
      ),
      margin: EdgeInsets.only(left: 60, right: 60, top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          FlatButton(
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              print("12");
              if (name == "student") {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Login("student")));
              } else {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) => Login("professor")));
              }
            },
          ),
        ],
      ),
    );
  }
}
