import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_bag_shop/constants.dart';
import 'package:online_bag_shop/model/product.dart';
import 'package:online_bag_shop/provider/product_provider.dart';
import 'package:online_bag_shop/utils.dart';
import 'package:provider/provider.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    final myCart = context.read<ProductProvider>().getCart;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPaddin,
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: kDefaultPaddin,
            ),
            height: 50.0,
            width: 58.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              border: Border.all(color: widget.product.color),
            ),
            child: IconButton(
              onPressed: () {
                if (!myCart.contains(widget.product)) {
                  context.read<ProductProvider>().addToCart(widget.product);
                  // showSnackBar(
                  //   const Color(0xFF198754),
                  //   'Product added !',
                  //   const Color(0xFF198754),
                  //   const Color(0xFFFFFFFF),
                  //   context,
                  // );
                  showSnackBar(context: context, isAdded: false);
                } else {
                  showSnackBar(context: context, isAdded: true);
                }
              },
              icon: SvgPicture.asset(
                'assets/icons/add_to_cart.svg',
                color: widget.product.color,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50.0,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: widget.product.color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
