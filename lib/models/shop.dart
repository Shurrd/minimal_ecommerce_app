import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      price: 5.99,
      description: "Some description",
    ),
    Product(
      name: "Product 2",
      price: 5.99,
      description: "Some description",
    ),
    Product(
      name: "Product 3",
      price: 5.99,
      description: "Some description",
    ),
    Product(
      name: "Product 4",
      price: 5.99,
      description: "Some description",
    ),
  ];

  // Add users to Cart

  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
