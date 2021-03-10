import 'package:education_system/screans/student_registeration.dart';
import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  var type;
  Groups(this.type);
  static final String Routs = '3';
  @override
  _GroupsState createState() => _GroupsState(type);
}

class _GroupsState extends State<Groups> {
  var type;
  _GroupsState(this.type);
  var material = ["math", "data structer", "c++", "oop", "dart"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Groups"),
        backgroundColor: Colors.green[900],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(top: 70),
        children: List.generate(5, (index) {
          return InkWell(
            child: Card(
              color: Colors.green[200],
              margin: EdgeInsets.all(20),
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          material[index],
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 70),
                    Row(
                      children: [Text("number : 5")],
                    )
                  ],
                ),
              ),
            ),
            onTap: () {},
          );
        }),
      ),
      floatingActionButton: float1(context),
    );
  }

  Widget float1(BuildContext context) {
    if (type != "student") {
      return FloatingActionButton(
        child: Icon(Icons.show_chart),
        onPressed: () {
          Navigator.pushNamed(context, Students.Routs);
        },
      );
    } else {
      return null;
    }
  }
}
