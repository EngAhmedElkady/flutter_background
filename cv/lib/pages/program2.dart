/*var url = [
    "https://youtu.be/I-a7F6E4SkI",
    "https://youtu.be/I-a7F6E4SkI",
    "https://youtu.be/3RjGu-Vq0Vw",
    "https://youtu.be/gIUVLRhIat4",
    "https://youtu.be/VBIdYZbABBI"
  ];
  var photo = [
    "https://i.ytimg.com/vi/o9sIrvpH_ic/maxresdefault.jpg",
    "https://i.ytimg.com/vi/RpnFoSIlw8s/maxresdefault.jpg",
    "https://i.ytimg.com/vi/o9sIrvpH_ic/maxresdefault.jpg",
    "https://i.ytimg.com/vi/RpnFoSIlw8s/maxresdefault.jpg",
    "https://i.ytimg.com/vi/o9sIrvpH_ic/maxresdefault.jpg",
  ];
  */
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Program extends StatefulWidget {
  @override
  _ProgramState createState() => _ProgramState();
}

class student {
  int cc = 0, dar = 0, jav = 0, pytho = 0;
}

class _ProgramState extends State<Program> {
  var data = ["c++", "java", "dart", "python"];
  var degree = {"c++": "", "java": "", "dart": "", "python": ""};
  student d;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("programming "),
      ),
      body: Container(
        color: Colors.grey[900],
        padding: EdgeInsets.only(top: 150),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(4, (i) {
            return Container(
              color: Colors.grey[400],
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${data[i]}",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "enter the ${data[i]}../60",
                        ),
                        onChanged: (v) {
                          setState(() {
                            degree[data[i]] = v;
                          });
                        },
                      ),
                    ),
                    RaisedButton(
                      child: Text("Save"),
                      onPressed: () {
                        if (i == 0) d.cc = int.parse(degree["c++"]);
                        if (i == 2) d.dar = int.parse(degree["dart"]);
                        if (i == 1) d.jav = int.parse(degree["java"]);
                        if (i == 3) d.pytho = int.parse(degree["python"]);
                      },
                    ),
                  ],
                ),
              ),
            );
          }),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
    );
  }
}
