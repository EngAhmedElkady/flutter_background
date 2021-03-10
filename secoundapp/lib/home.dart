import 'package:flutter/material.dart';
import 'page1.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    bool m = false;
    bool v = true;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("whatsApp"),
              centerTitle: true,
              bottom: TabBar(tabs: [
                Tab(
                  text: "chat",
                ),
                Tab(
                  text: 'members',
                ),
                Tab(
                  text: 'state',
                ),
              ]),
            ),
            body: TabBarView(children: [
              ListView.custom(
                childrenDelegate: SliverChildListDelegate(
                  List.generate(
                    50,
                    (x) {
                      return Container(
                        child: Text("$x"),
                      );
                    },
                  ),
                ),
              ),
              ListView.custom(
                childrenDelegate: SliverChildListDelegate(
                  List.generate(
                    50,
                    (x) {
                      return Container(
                        child: Text("$x"),
                      );
                    },
                  ),
                ),
              ),
              ListView.custom(
                childrenDelegate: SliverChildListDelegate(
                  List.generate(
                    50,
                    (x) {
                      return Container(
                        child: Text("$x"),
                      );
                    },
                  ),
                ),
              ),
            ])));
  }
}
