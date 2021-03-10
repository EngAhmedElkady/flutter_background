import 'package:flutter/material.dart';

ListView Page() {
  return ListView(
    children: <Widget>[
      Container(
        height: 20,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            new CircleAvatar(
                backgroundColor: Colors.brown.shade800,
                child: new Image.network(
                    "https://www.flaticon.com/svg/static/icons/svg/921/921077.svg")),
          ],
        ),
      )
    ],
  );
}
