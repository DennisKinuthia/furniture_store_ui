import 'package:flutter/material.dart';
import 'package:furniture_store/models/product.dart';
import 'package:furniture_store/screens/details/details_screen.dart';
import 'package:furniture_store/screens/home/components/product_card.dart';
import 'package:furniture_store/utils/size_config.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    final double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                SizeConfig.orientation == Orientation.portrait ? 2 : 4,
            childAspectRatio: 0.693,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) => ProductCard(
                product: products[index],
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: products[index]),
                    ),
                  );
                },
              )),
    );
  }
}
