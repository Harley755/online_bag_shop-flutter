import 'package:flutter/material.dart';
import 'package:online_bag_shop/constants.dart';
import 'package:online_bag_shop/model/product.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPaddin,
      ),
      child: Description(product: product),
    );
  }
}
