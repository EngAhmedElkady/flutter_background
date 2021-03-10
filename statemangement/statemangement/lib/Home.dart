import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:statemangement/product.dart';
import 'package:statemangement/statemangemant.dart';
import 'cartcontent.dart';

class Home extends StatelessWidget {
  List<Product> items = List.generate(100, (i) {
    return Product(
        name: "Product $i", price: Random().nextInt(5000), check: false);
  });
  @override
  Widget build(BuildContext context) {
    Provider cart = Provider.of(context);
    return StatefulBuilder(builder: (context, StateSetter setstate) {
      return Scaffold(
        appBar: AppBar(
          title: Text("State Mangement"),
          actions: [
            Container(
              margin: EdgeInsets.only(top: 15, right: 25),
              child: Badge(
                // position: BadgePosition.topEnd(top: 10, end: 10),
                badgeContent: Text('${cart.products.length}'),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                ),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(items[i].name),
                  ),
                  Checkbox(
                      value: items[i].check,
                      onChanged: (v) {
                        setstate(() {
                          items[i].check = !items[i].check;
                          if (items[i].check)
                            cart.products.add(items[i]);
                          else
                            cart.products.remove(items[i]);
                        });
                      })
                ],
              ),
              subtitle: Text("${items[i].price}"),
            );
          },
        ),
      );
    });
  }
}
