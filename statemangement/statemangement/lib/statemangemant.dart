import 'package:flutter/material.dart';
import 'package:statemangement/product.dart';
import 'package:collection/collection.dart';

class Provider extends InheritedWidget {
  List<Product> products = [];
  Widget child;
  Provider({this.child});
  @override
  bool updateShouldNotify(Provider oldWidget) {
    return IterableEquality().equals(products, oldWidget.products);
  }

  static Provider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}
