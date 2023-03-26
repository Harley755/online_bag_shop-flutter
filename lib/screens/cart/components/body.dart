import 'package:flutter/material.dart';
import 'package:online_bag_shop/constants.dart';
import 'package:online_bag_shop/model/product.dart';
import 'package:online_bag_shop/provider/product_provider.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  final List<Product> myCart;
  const Body({super.key, required this.myCart});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    bool expand = false;

    return SizedBox(
      height: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.myCart.length,
        itemBuilder: (context, index) {
          final currentProduct = widget.myCart[index];
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPaddin,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPaddin / 2,
                  ),
                  child: CircleAvatar(
                    radius: 23.0,
                    backgroundColor: currentProduct.color,
                    child: Image.asset(currentProduct.image),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: kDefaultPaddin / 2,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentProduct.title,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: kTextColor),
                        ),
                        Text(
                          currentProduct.description,
                          maxLines: 3,
                          overflow: TextOverflow.visible,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: kDefaultPaddin / 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          context
                              .read<ProductProvider>()
                              .removeToCart(currentProduct);
                        },
                        icon: const Icon(
                          Icons.delete_outline,
                        ),
                      ),
                      Text(
                        "\$${currentProduct.price.toString()}",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: kTextColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
