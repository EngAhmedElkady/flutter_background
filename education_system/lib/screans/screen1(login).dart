import 'package:education_system/databases/databasehelper.dart';
import 'package:education_system/file.dart';
import 'package:education_system/model/acount.dart';
import 'package:flutter/material.dart';

import 'groups.dart';
import 'screen3(sign_up).dart';

class Login extends StatefulWidget {
  String type;
  Login(this.type);
  static String Routs = '2';

  @override
  _LoginState createState() => _LoginState(type);
}

class _LoginState extends State<Login> {
  String type;
  _LoginState(this.type);
  Database_helper helper;
  var list;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    helper = Database_helper();
  }

  var data_person = new Save_data();

  String email = null;

  String password = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Container(
              height: 410,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://image.freepik.com/free-vector/back-school-lettering-season-with-rocket-chalboard-background_18591-69476.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 25),
              child: TextFormField(
                decoration: InputDecoration(
                  counterText: "enter you email",
                  prefixIcon: Icon(Icons.account_box),
                ),
                onChanged: (c) {
                  setState(() {
                    email = c;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 25),
              child: TextFormField(
                decoration: InputDecoration(
                  counterText: "enter you password",
                  prefixIcon: Icon(Icons.remove_red_eye),
                ),
                obscureText: true,
                onChanged: (c) {
                  setState(() {
                    password = c;
                  });
                },
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                    onPressed: () async {
                      if (type == "student")
                        list = await helper.all_acount();
                      else
                        list = await helper.all_professor();

                      bool t = true;
                      for (int i = 0; i < list.length; i++) {
                        var acount = list[i];
                        print(acount);
                        if (acount['email'] == email) {
                          t = false;
                          if (acount['password'] == password) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (c) => Groups(type)));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Text("password is wrong"),
                                    ),
                                  );
                                });
                          }
                        }
                      }
                      if (t == true) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Text("please register"),
                                ),
                              );
                            });
                      }
                    },
                    child: Text("login")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (c) => Signup(type)));
                    },
                    child: Text("sign up")),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
