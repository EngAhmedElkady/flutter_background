import 'package:coffee/Model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget {
  double prise = 0;
  int number = 0;
  Product product = null;
  Widget child;
  Provider({this.child});

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return product != oldWidget.product;
  }

  static Provider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}
