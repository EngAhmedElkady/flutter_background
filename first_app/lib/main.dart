import 'package:flutter/material.dart';

import 'choise.dart';

main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List list = ['dart', 'c++', 'python', 'java'];
  String select = 'dart';
  int s = 0;
  var choices = <Choice>[
    Choice(title: "Bicycle", icon: Icons.directions_bike),
    Choice(title: "boat", icon: Icons.directions_boat),
    Choice(title: "bus", icon: Icons.directions_bus),
    Choice(title: "Car", icon: Icons.directions_car),
    Choice(title: "Metro", icon: Icons.directions_railway),
    Choice(title: "Walk", icon: Icons.directions_walk),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey[900],
              title: Text(" the main "),
              actions: [
                IconButton(
                    icon: Icon(choices[0].icon),
                    onPressed: () {
                      setState(() {
                        s = 0;
                      });
                    }),
                IconButton(
                    icon: Icon(choices[1].icon),
                    onPressed: () {
                      setState(() {
                        s = 1;
                      });
                    }),
                IconButton(
                    icon: Icon(choices[2].icon),
                    onPressed: () {
                      setState(() {
                        s = 2;
                      });
                    }),
                IconButton(
                    icon: Icon(choices[3].icon),
                    onPressed: () {
                      setState(() {
                        s = 3;
                      });
                    }),
                PopupMenuButton(
                  itemBuilder: (context) {
                    return list.map((e) {
                      return PopupMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList();
                  },
                  //icon: Icon(Icons.add),
                ),
              ],
              centerTitle: true,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://image.freepik.com/free-vector/scary-halloween-scarecrow-illustration_43623-828.jpg',
                    ),
                    fit: BoxFit.fitHeight),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 140,
                      ),
                      Text(
                        'The Dark',
                        style:
                            TextStyle(color: Colors.amber[600], fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      DropdownButton(
                        items: list.map((e) {
                          return DropdownMenuItem(
                            child: Text(
                              e,
                              style: TextStyle(color: Colors.white),
                            ),
                            value: e,
                          );
                        }).toList(),
                        onChanged: (v) {
                          setState(() {
                            select = v;
                          });
                        },
                        value: select,
                        dropdownColor: Colors.amber[600],
                        focusColor: Colors.amber[600],
                        iconEnabledColor: Colors.amber[600],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        choices[s].title,
                        style:
                            TextStyle(fontSize: 30, color: Colors.amber[800]),
                      ),
                      Icon(
                        choices[s].icon,
                        color: Colors.amber[900],
                        size: 50,
                      ),
                    ],
                  )
                ],
              ),
            ),
            drawer: Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                      decoration: BoxDecoration(
                          color: Colors.amber[600],
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://image.freepik.com/free-vector/halloween-party-poster-carnival-background-concept-design_29865-1794.jpg'),
                              fit: BoxFit.fitHeight)),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://image.freepik.com/free-vector/halloween-pumpkin-terror_117488-487.jpg')),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ahmed Abdalkader",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Flutter Developer",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      )),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.amber[600],
                    ),
                    title: Text("Home"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.directions_car,
                      color: Colors.amber[600],
                    ),
                    title: Text("Car"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.directions_bus,
                      color: Colors.amber[600],
                    ),
                    title: Text("Bus"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.directions_boat,
                      color: Colors.amber[600],
                    ),
                    title: Text("boat"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.directions_railway,
                      color: Colors.amber[600],
                    ),
                    title: Text("metro"),
                    onTap: () {
                      setState(() {
                        s = 4;
                      });
                    },
                  )
                ],
              ),
            )));
  }
}
