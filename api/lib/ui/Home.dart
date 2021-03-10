import 'dart:convert';

import 'package:api/ui/model/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<Post> p;
  @override
  void initState() {
    super.initState();
    p = getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder<Post>(
        future: p,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.title);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        },
      ),
    ));
  }

  Future<Post> getdata() async {
    http.Response post =
        await http.get('https://jsonplaceholder.typicode.com/posts/1');
    if (post.statusCode == 200) {
      return Post.fromjson(json.decode(post.body));
    } else {
      throw Exception('Cant not load this post');
    }
  }
}
