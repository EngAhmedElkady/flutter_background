import 'package:coffee/statemangement/statemangement.dart';
import 'package:flutter/material.dart';

class Finalll extends StatelessWidget {
  static String Routs = '4';
  @override
  Widget build(BuildContext context) {
    var index = Provider.of(context);
    var product = index.product;
    return Scaffold(
      appBar: null,
      body: Container(
        color: Color.fromRGBO(71, 58, 58, 1),
        padding: EdgeInsets.only(top: 55),
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 30),
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-vector/cute-boy-standing-position-showing-thumb_96037-450.jpg?size=626&ext=jpg&ga=GA1.2.46171269.1602198804"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      size: 80,
                      color: Color.fromRGBO(255, 205, 122, 0.8),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "order placed\nsuccessfully!",
                      style: TextStyle(
                          fontSize: 40,
                          color: Color.fromRGBO(255, 205, 122, 0.8),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "YOUR ORDER",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(255, 205, 122, 0.8),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "${index.number + 1} ",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "x",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w100),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "${product.title}",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${product.content}",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                    Text(
                      "${index.prise}",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 230,
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 20),
                  width: double.infinity,
                  height: 60,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "BUY ANOTHER DRINK",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      index.number = 0;
                      Navigator.of(context).popUntil(ModalRoute.withName('/'));
                    },
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
