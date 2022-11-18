import 'package:flutter/material.dart';

import 'package:furniture_store/models/product.dart';
import 'package:furniture_store/screens/home/components/title_text.dart';
import 'package:furniture_store/utils/constants.dart';
import 'package:furniture_store/utils/size_config.dart';
import 'package:furniture_store/utils/widget_functions.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  final Product product;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    final double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: defaultSize * 14.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: secondaryColor,
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/spinner.gif',
                    image: product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize * 2.0),
                child: TextTitle(text: product.title),
              ),
              addVerticalSpace(10.0),
              Text('\$${product.price}'),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
