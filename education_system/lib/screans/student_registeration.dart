import 'package:education_system/databases/databasehelper.dart';
import 'package:education_system/model/acount.dart';
import 'package:flutter/material.dart';

class Students extends StatefulWidget {
  static String Routs = '5';
  @override
  _StudentsState createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  Database_helper helper;
  Acount profile;

  @override
  void initState() {
    super.initState();
    helper = Database_helper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Students"),
        backgroundColor: Colors.green[900],
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: helper.all_acount(),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, i) {
                  profile = Acount.fromdb(snapshot.data[i]);
                  return Card(
                    color: Colors.green[100],
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://image.freepik.com/free-vector/programmers-concept-with-flat-design_23-2147850221.jpg")),
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "username    : ${profile.username}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "email       : ${profile.email}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "password    : ${profile.password}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "id_number   : ${profile.number}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ],
                              ),
                              IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () async {
                                    int x = await helper
                                        .delete_acount(profile.number);
                                    setState(() {
                                      print(x);
                                    });
                                  })
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
