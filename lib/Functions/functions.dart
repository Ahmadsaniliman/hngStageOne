import 'package:flutter/material.dart';
import 'package:simpleshoppingapp/Model/product.dart';

class ProductFuction {
  ProductFuction._sharedInstance();
  static final ProductFuction _shared = ProductFuction._sharedInstance();
  factory ProductFuction() => _shared;

  final List<Product> _products = [];
  Product? product({required int index}) =>
      _products.length > index ? _products[index] : null;

  int get productLength => _products.length;

  void addProductToCheckOut({required Product product}) {
    _products.add(product);
  }

  void removeProductToCheckOut({required Product product}) {
    _products.remove(product);
  }
}

class ProductFuctions extends ValueNotifier<List<Product>> {
  ProductFuctions._sharedInstance() : super([]);
  static final ProductFuctions _shared = ProductFuctions._sharedInstance();
  factory ProductFuctions() => _shared;

//   final List<Product> _products = [];
  Product? product({required int index}) =>
      value.length > index ? value[index] : null;

  int get productLength => value.length;

  void addProductToCheckOut({required Product product}) {
    final products = value;
    products.add(product);
    notifyListeners();
  }

  void removeProductToCheckOut({required Product product}) {
    final products = value;
    if (products.contains(product)) {
      products.remove(product);
    }
    notifyListeners();
  }
}
