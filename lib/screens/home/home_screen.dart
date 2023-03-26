import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_bag_shop/constants.dart';
import 'package:online_bag_shop/provider/product_provider.dart';
import 'package:online_bag_shop/screens/cart/cart_screen.dart';
import 'package:online_bag_shop/screens/home/components/body.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myCartLength = context.watch<ProductProvider>().getCart;
    return Scaffold(
      appBar: builAppBar(context, myCartLength),
      body: const Body(),
    );
  }

  AppBar builAppBar(context, myCartLength) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          color: kTextColor,
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CartScreen(),
              )),
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
                color: kTextColor,
              ),
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
