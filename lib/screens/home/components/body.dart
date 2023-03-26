import 'package:flutter/material.dart';
import 'package:online_bag_shop/constants.dart';
import 'package:online_bag_shop/provider/product_provider.dart';
import 'package:online_bag_shop/screens/details/details_screen.dart';
import 'package:online_bag_shop/screens/home/components/categories.dart';
import 'package:online_bag_shop/screens/home/components/item_card.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    var myAllProducts = context.watch<ProductProvider>().myAllProducts;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: myAllProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .75,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: myAllProducts[index],
                press: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    product: myAllProducts[index],
                  ),
                )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
