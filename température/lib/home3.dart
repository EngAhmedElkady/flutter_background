import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tempetther/Home.dart';
import 'package:tempetther/setting.dart';

class Home3 extends StatefulWidget {
  static String Routs = "3";
  @override
  _Home3State createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  //class Data
  var arr = ["c", "f", "d"];
  String text1 = " ";
  String text2 = " ";

  double datacontrol1 = 0.0;
  double datacontrol2 = 0.0;

  int value1 = 0;
  int value2 = 0;

  //controller
  var control1 = TextEditingController();
  var control2 = TextEditingController();

  //2- function
  //control1
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    control1.addListener(setdata);
  }

  void setdata() {
    datacontrol1 = double.parse(control1.text);
    double x = convert(datacontrol1);
    control2.text = x.toString();
  }

  double convert(double v) {
    double c = 5;
    c = value1 == 1 ? v * 10 : value1 == 2 ? v * 20 : v * 30;
    print(c);
    return c;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => Navigator.of(context).pushNamed(Setting.Routs)),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            children: [
              Expanded(
                child: Card(
                  child: Column(
                    children: [
                      Text("your degree is $text1"),
                      TextField(
                        controller: control1,
                        decoration: InputDecoration(
                          hintText: "Enter your degree",
                          suffix: DropdownButton(
                            items: arr.map(
                              (e) {
                                return DropdownMenuItem(
                                    child: Text(e), value: e);
                              },
                            ).toList(),
                            onChanged: (v) {
                              setState(() {
                                text1 = v;
                                value1 = v == "c" ? 1 : v == "f" ? 2 : 3;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "=",
                style: TextStyle(fontSize: 20),
              ),
              Expanded(
                child: Card(
                  child: Column(
                    children: [
                      Text("your degree is $text2"),
                      TextField(
                        controller: control2,
                        decoration: InputDecoration(
                          hintText: "Enter your degree",
                          suffix: DropdownButton(
                            items: arr.map(
                              (e) {
                                return DropdownMenuItem(
                                    child: Text(e), value: e);
                              },
                            ).toList(),
                            onChanged: (v) {
                              setState(() {
                                text2 = v;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
