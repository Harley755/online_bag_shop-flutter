import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description:
        'Random text description1 | Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    image: 'assets/images/bag_1.png',
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 2,
    title: "Blet God",
    price: 234,
    size: 8,
    description:
        'Random text descrption 2 | Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    image: 'assets/images/bag_2.png',
    color: const Color(0xFFD3A984),
  ),
  Product(
    id: 3,
    title: "Office Code",
    price: 234,
    size: 10,
    description:
        'Random text descrption 3 | Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    image: 'assets/images/bag_3.png',
    color: const Color(0xFF989493),
  ),
  Product(
    id: 4,
    title: "Office Code",
    price: 234,
    size: 11,
    description:
        'Random text descrption 4 | Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    image: 'assets/images/bag_4.png',
    color: const Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description:
        'Random text descrption 5 | Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    image: 'assets/images/bag_5.png',
    color: const Color(0xFFFB8773),
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description:
        'Random text descrption 6 | Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    image: 'assets/images/bag_6.png',
    color: const Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
