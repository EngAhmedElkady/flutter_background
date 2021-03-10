import 'package:coffee/Screans/customize.dart';
import 'package:coffee/statemangement/statemangement.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  static String Routs = '2';
  @override
  Widget build(BuildContext context) {
    var index = Provider.of(context);
    var product = index.product;
    var defult_prise = double.parse(product.prise);
    defult_prise = double.parse(defult_prise.toStringAsFixed(2));
    index.prise = defult_prise;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 55),
        color: Color.fromRGBO(71, 58, 58, 1),
        width: double.infinity,
        height: double.infinity,
        child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          index.prise = double.parse(index.prise.toStringAsFixed(2));

          return Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          height: 4,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
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
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: Row(
                        children: [
                          Text(
                            "How many\ndo you need?",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromRGBO(255, 205, 122, 0.8),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(product.url),
                              fit: BoxFit.fill)),
                      width: 165,
                      height: 165,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      product.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      product.content,
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      product.prise,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            iconSize: 30,
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                index.prise -= defult_prise;
                                index.number--;
                              });
                            },
                          ),
                        ),
                        Text(
                          "${index.prise}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            iconSize: 30,
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                index.prise += defult_prise;
                                index.number++;
                              });
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      width: double.infinity,
                      height: 60,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.white,
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
                                color: Colors.black,
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
                                  "Customize",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
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
                          Navigator.of(context).pushNamed(Customize.Routs);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
