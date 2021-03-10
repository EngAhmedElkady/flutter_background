import 'package:flutter/material.dart';

class App extends StatefulWidget {
  static final Routs = '1';
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int c = 0;
  int dart = 0;
  int java = 0;
  int python = 0;
  var keyp = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyp,
      appBar: AppBar(
        title: Text("prgramming"),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50, right: 10, left: 15),
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey[800],
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 250,
                      width: 170,
                      color: Colors.amber,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "c++",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Card(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "  degree c++../60",
                              ),
                              onChanged: (v) {
                                c = int.parse(v);
                              },
                            ),
                          ),
                          RaisedButton(
                            child: Text("Save"),
                            onPressed: () {
                              keyp.currentState.showSnackBar(
                                SnackBar(
                                  content: Text(
                                      "your degree in c++ is ${55 / 60 * 100} %"),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 250,
                      width: 170,
                      color: Colors.amber,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "java",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Card(
                            child: TextFormField(
                                decoration: InputDecoration(
                              hintText: "  degree java../60",
                            )),
                          ),
                          RaisedButton(
                            child: Text("Save"),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    // Container(),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      height: 250,
                      width: 170,
                      color: Colors.amber,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "dart",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Card(
                            child: TextFormField(
                                decoration: InputDecoration(
                              hintText: "  degree dart../60",
                            )),
                          ),
                          RaisedButton(
                            child: Text("Save"),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 250,
                      width: 170,
                      color: Colors.amber,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "python",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Card(
                            child: TextFormField(
                                decoration: InputDecoration(
                              hintText: "  degree python../60",
                            )),
                          ),
                          RaisedButton(
                            child: Text("Save"),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    // Container(),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(child: Text("   Return   "), onPressed: () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
