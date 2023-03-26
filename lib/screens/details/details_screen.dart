import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_bag_shop/constants.dart';
import 'package:online_bag_shop/model/product.dart';
import 'package:online_bag_shop/provider/product_provider.dart';
import 'package:online_bag_shop/screens/cart/cart_screen.dart';
import 'package:online_bag_shop/screens/details/components/body.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final myCartLength = context.watch<ProductProvider>().getCart;

    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context, myCartLength),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(context, myCartLength) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CartScreen(),
              )),
              icon: SvgPicture.asset("assets/icons/cart.svg"),
              color: kTextColor,
            ),
            Container(
              padding: EdgeInsets.zero,
              height: 21.0,
              width: 21.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(child: Text(myCartLength.length.toString())),
            )
          ],
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
