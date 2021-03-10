import 'dart:ui';

import 'package:fancy_dialog/FancyGif.dart';
import 'package:fancy_dialog/fancy_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  var key1 = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key1,
      appBar: AppBar(
        title: Text("AHMED"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text("enter"),
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return CustamDialoge(
                      tite: "the game",
                      discrib:
                          "you want to delete it enter yes if you want or no ",
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text("enter 2"),
              onPressed: () {
                showGeneralDialog(
                    context: context,
                    barrierLabel: MaterialLocalizations.of(context)
                        .modalBarrierDismissLabel,
                    barrierDismissible: true,
                    transitionDuration: Duration(milliseconds: 200),
                    barrierColor: Colors.amber,
                    pageBuilder:
                        (BuildContext context, Animation a, Animation b) {
                      return Container(
                        child: Column(
                          children: [
                            Text("ahiii"),
                            RaisedButton(onPressed: () {
                              Navigator.of(context).pop();
                            })
                          ],
                        ),
                      );
                    });
              },
            ),
            RaisedButton(
                child: Text("enter 3"),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return FancyDialog(
                        title: "Don't forget",
                        descreption:
                            "enter the correct name and the email and password",
                        gifPath: FancyGif.SUBMIT,
                        animationType: 3,
                        okFun: () {
                          key1.currentState.showSnackBar(
                            SnackBar(
                              content: Text("good man عاش ياض"),
                            ),
                          );
                        },
                      );
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}

class Consts {
  static const double padding = 16;
  static const double avatar = 66;
  Consts._();
}

class CustamDialoge extends StatelessWidget {
  final String tite, discrib, botton;
  final Image image;
  CustamDialoge({this.botton, this.discrib, this.image, this.tite});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: custom(context),
    );
  }

  custom(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: Consts.padding + Consts.avatar,
            left: Consts.padding,
            right: Consts.padding,
            bottom: Consts.padding,
          ),
          margin: EdgeInsets.only(
            top: Consts.avatar,
            left: Consts.padding,
            right: Consts.padding,
            bottom: Consts.padding,
          ),
          decoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(Consts.padding),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, blurRadius: 10, offset: Offset(0, 10))
              ]),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                tite,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                discrib,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: RaisedButton(
                      child: Text("No"),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: RaisedButton(
                      child: Text("Yes"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: Consts.padding,
          right: Consts.padding,
          child: CircleAvatar(
            radius: Consts.avatar,
            backgroundColor: Colors.blue,
          ),
        )
      ],
    );
  }
}
