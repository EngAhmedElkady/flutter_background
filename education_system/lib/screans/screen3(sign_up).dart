import 'package:education_system/databases/databasehelper.dart';
import 'package:education_system/model/acount.dart';
import 'package:flutter/material.dart';

import '../file.dart';
import 'screen1(login).dart';

class Signup extends StatefulWidget {
  String typ;
  Signup(this.typ);
  static String Routs = '4';
  @override
  _SignupState createState() => _SignupState(typ);
}

class _SignupState extends State<Signup> {
  String typ;
  _SignupState(this.typ);
  Database_helper db;
  Acount profile;
  @override
  void initState() {
    super.initState();
    db = Database_helper();
  }

  String email, name, password;
  var data_person = new Save_data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 130, left: 10, right: 10),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue[200],
                  ),
                  margin: EdgeInsets.only(
                      top: 100, left: 15, right: 15, bottom: 100),
                  padding: EdgeInsets.only(
                      top: 100, left: 15, right: 15, bottom: 15),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          counterText: "enter you name",
                          prefixIcon: Icon(Icons.person),
                        ),
                        onChanged: (v) {
                          setState(() {
                            name = v;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          counterText: "enter you email",
                          prefixIcon: Icon(Icons.account_box),
                        ),
                        onChanged: (v) {
                          setState(() {
                            email = v;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          counterText: "enter you password",
                          prefixIcon: Icon(Icons.remove_red_eye),
                        ),
                        onChanged: (v) {
                          setState(() {
                            password = v;
                          });
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                              onPressed: () async {
                                var file = await data_person.write(email);
                                profile = Acount(name, email, password);
                                if (typ == "studude")
                                  db.add_acount(profile);
                                else
                                  db.add_professor(profile);
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          child: Text("done"),
                                        ),
                                      );
                                    });
                                print(555);
                                await Future.delayed(Duration(seconds: 1));
                                if (true) Navigator.of(context).pop();
                                await Future.delayed(Duration(seconds: 0));
                                setState(() {});
                                Navigator.of(context).pop();
                              },
                              child: Text("Save"))
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://image.freepik.com/free-vector/programmers-concept-with-flat-design_23-2147850221.jpg")),
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
