import 'package:flutter/material.dart';
import 'package:online_bag_shop/model/product.dart';

class ProductProvider extends ChangeNotifier {
  final List<Product> _initialProducts = products;
  List<Product> get myAllProducts => _initialProducts;

  List<Product> myCart = [];
  List<Product> get getCart => myCart;

  void addToCart(Product product) {
    getCart.add(product);
    notifyListeners();
  }

  void removeToCart(Product product) {
    getCart.remove(product);
    print("deleteSuccessfully");
    notifyListeners();
  }
}
