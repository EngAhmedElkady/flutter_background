import 'package:coffee/Model/product.dart';
import 'package:coffee/Screans/Container.dart';
import 'package:coffee/Screans/how_many.dart';
import 'package:coffee/statemangement/statemangement.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static final Routs = '/';
  @override
  Widget build(BuildContext context) {
    var index = Provider.of(context);
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
                    "Choose your\ndrink",
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
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: row(
                    title: "Cappuccino",
                    url:
                        "https://as2.ftcdn.net/jpg/01/42/57/51/500_F_142575126_FhmT8mA30yVRFWGpTHB7wAPNwXuxRXZX.jpg",
                    content: "Double espresson,\nstramed milke fraom",
                    prise: "4.55",
                  ),
                  onTap: () {
                    index.product = (Product(
                      title: "Cappuccino",
                      url:
                          "https://as2.ftcdn.net/jpg/01/42/57/51/500_F_142575126_FhmT8mA30yVRFWGpTHB7wAPNwXuxRXZX.jpg",
                      content: "Double espresson,\nstramed milke fraom",
                      prise: "4.55",
                    ));
                    Navigator.of(context).pushNamed(Order.Routs);
                  },
                ),
                InkWell(
                  child: row(
                    title: "Latte",
                    url:
                        "https://as2.ftcdn.net/jpg/00/85/19/07/500_F_85190796_bkhZ3BdHDxbHn0jBLolzikIv0fdDQgzr.jpg",
                    content: "Expresso,Milk",
                    prise: "3.48",
                  ),
                  onTap: () {
                    index.product = (Product(
                      title: "Latte",
                      url:
                          "https://as2.ftcdn.net/jpg/00/85/19/07/500_F_85190796_bkhZ3BdHDxbHn0jBLolzikIv0fdDQgzr.jpg",
                      content: "Expresso,Milk",
                      prise: "3.48",
                    ));
                    Navigator.of(context).pushNamed(Order.Routs);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: row(
                    title: "Espresso",
                    url:
                        "https://as1.ftcdn.net/jpg/02/67/39/88/500_F_267398896_Lq1CSc3RtjnokKsl6aitnEkXfr2d3twE.jpg",
                    content: "Double\nespresson,Hot milk",
                    prise: "3.21",
                  ),
                  onTap: () {
                    index.product = (Product(
                      title: "Espresso",
                      url:
                          "https://as1.ftcdn.net/jpg/02/67/39/88/500_F_267398896_Lq1CSc3RtjnokKsl6aitnEkXfr2d3twE.jpg",
                      content: "Double\nespresson,Hot milk",
                      prise: "3.21",
                    ));
                    Navigator.of(context).pushNamed(Order.Routs);
                  },
                ),
                InkWell(
                  child: row(
                    title: "Americano",
                    url:
                        "https://as1.ftcdn.net/jpg/00/98/46/64/500_F_98466472_GPiGOViubn5bFpwOPfsYKhmTkoKxFVFM.jpg",
                    content: "Espresson,Hot water",
                    prise: "2.32",
                  ),
                  onTap: () {
                    index.product = (Product(
                      title: "Americano",
                      url:
                          "https://as1.ftcdn.net/jpg/00/98/46/64/500_F_98466472_GPiGOViubn5bFpwOPfsYKhmTkoKxFVFM.jpg",
                      content: "Espresson,Hot water",
                      prise: "2.32",
                    ));
                    Navigator.of(context).pushNamed(Order.Routs);
                  },
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: row(
                    title: "Mocha",
                    url:
                        "https://as1.ftcdn.net/jpg/02/38/37/24/500_F_238372466_w0qV5zGRaojhEQZPISUNaZjS8PLAFMG1.jpg",
                    content: "Chocolate,Expresso,\n Hot Milk",
                    prise: "1.38",
                  ),
                  onTap: () {
                    index.product = (Product(
                      title: "Mocha",
                      url:
                          "https://as1.ftcdn.net/jpg/02/38/37/24/500_F_238372466_w0qV5zGRaojhEQZPISUNaZjS8PLAFMG1.jpg",
                      content: "Chocolate,Expresso,\n Hot Milk",
                      prise: "1.38",
                    ));
                    Navigator.of(context).pushNamed(Order.Routs);
                  },
                ),
                InkWell(
                  child: row(
                    title: "Hot Chocolate",
                    url:
                        "https://as2.ftcdn.net/jpg/00/62/48/35/500_F_62483540_lG9ZveQkHvPVT3DI3mBP3IAPgdjc2Hpd.jpg",
                    content: "Chocolate Milk,\nMarshmellow",
                    prise: "2.43",
                  ),
                  onTap: () {
                    index.product = (Product(
                      title: "Hot Chocolate",
                      url:
                          "https://as2.ftcdn.net/jpg/00/62/48/35/500_F_62483540_lG9ZveQkHvPVT3DI3mBP3IAPgdjc2Hpd.jpg",
                      content: "Chocolate Milk,\nMarshmellow",
                      prise: "2.43",
                    ));
                    Navigator.of(context).pushNamed(Order.Routs);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
