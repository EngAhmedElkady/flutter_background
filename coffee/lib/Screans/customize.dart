import 'package:coffee/Screans/final.dart';
import 'package:coffee/statemangement/statemangement.dart';
import 'package:flutter/material.dart';

class Customize extends StatelessWidget {
  static String Routs = '3';
  @override
  Widget build(BuildContext context) {
    int x1 = -1, x2 = -1, x3 = -1, x4 = -1;
    var index = Provider.of(context);
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      index.prise = double.parse(index.prise.toStringAsFixed(2));
      return Scaffold(
        appBar: null,
        body: Container(
          color: Color.fromRGBO(71, 58, 58, 1),
          padding: EdgeInsets.only(top: 55),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
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
                child: Row(
                  children: [
                    Text(
                      "Customize\nyour drink",
                      style: TextStyle(
                          fontSize: 40,
                          color: Color.fromRGBO(255, 205, 122, 0.8),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              InkWell(
                child: Row(
                  children: [
                    container(x1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Suger",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "0.10",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  x1 = -1 * x1;
                  double x = 0.10;

                  if (x1 == 1)
                    index.prise += x;
                  else
                    index.prise -= x;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 55,
              ),
              InkWell(
                child: Row(
                  children: [
                    container(x2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Syrup",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "0.20",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  x2 = -1 * x2;
                  double x = 0.20;
                  if (x2 == 1)
                    index.prise = index.prise + x;
                  else
                    index.prise -= x;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 55,
              ),
              InkWell(
                child: Row(
                  children: [
                    container(x3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Whip Cream",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "0.10",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  x3 = -1 * x3;
                  double x = 0.10;
                  if (x3 == 1)
                    index.prise = index.prise + x;
                  else
                    index.prise -= x;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 55,
              ),
              InkWell(
                child: Row(
                  children: [
                    container(x4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ice",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "0.15",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  x4 = -1 * x4;
                  double x = 0.15;
                  if (x4 == 1)
                    index.prise = index.prise + x;
                  else
                    index.prise -= x;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${index.prise}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Place Order",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 25,
                          )
                        ],
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Finalll.Routs);
                  },
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Widget container(int x) {
    if (x == -1) {
      return Container(
        margin: EdgeInsets.only(right: 30, left: 25),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(right: 30, left: 25),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Icon(
          Icons.done,
          color: Colors.black,
          size: 25,
        ),
      );
    }
  }
}
