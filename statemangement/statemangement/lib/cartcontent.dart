import "package:flutter/material.dart";
import 'package:statemangement/statemangemant.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("cart content"),
      ),
      body: Center(
          child: Text(
        "${cart.products.length}",
        style: Theme.of(context).textTheme.headline4,
      )),
    );
  }
}
