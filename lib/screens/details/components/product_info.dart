import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_store/models/product.dart';
import 'package:furniture_store/utils/constants.dart';
import 'package:furniture_store/utils/size_config.dart';
import 'package:furniture_store/utils/widget_functions.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final double defaultSize = SizeConfig.defaultSize;
    final TextStyle lightText = TextStyle(color: textColor.withOpacity(0.6));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2.0),
      height: defaultSize * 37.5,
      width: defaultSize *
          (SizeConfig.orientation == Orientation.landscape ? 36 : 16),
      // color: Colors.black45,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              product.category.toUpperCase(),
              style: lightText,
            ),
            addVerticalSpace(defaultSize),
            Text(
              product.title,
              style: TextStyle(
                  fontSize: defaultSize * 2.4,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.8,
                  height: 1.4),
            ),
            addVerticalSpace(defaultSize * 2),
            Text(
              'From',
              style: lightText,
            ),
            Text(
              '\$${product.price}',
              style: TextStyle(
                fontSize: defaultSize * 1.6,
                fontWeight: FontWeight.bold,
                height: 1.6,
              ),
            ),
            addVerticalSpace(defaultSize * 2),
            Text(
              'Available Colors',
              style: lightText,
            ),
            Row(
              children: <Widget>[
                buildColorBox(
                  defaultSize,
                  color: const Color(0xFF7BA275),
                  isActive: true,
                ),
                buildColorBox(
                  defaultSize,
                  color: const Color(0xFFd7D7D7),
                ),
                buildColorBox(
                  defaultSize,
                  color: textColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildColorBox(double defaultSize,
      {Color? color, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      padding: const EdgeInsets.all(5.0),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive
          ? SvgPicture.asset('assets/icons/check.svg')
          : const SizedBox(),
    );
  }
}
