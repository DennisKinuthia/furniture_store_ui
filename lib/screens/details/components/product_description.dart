import 'package:flutter/material.dart';
import 'package:furniture_store/models/product.dart';
import 'package:furniture_store/utils/constants.dart';
import 'package:furniture_store/utils/size_config.dart';
import 'package:furniture_store/utils/widget_functions.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Container(
      constraints: BoxConstraints(maxHeight: defaultSize * 44),
      padding: EdgeInsets.only(
        top: defaultSize * 9.0,
        left: defaultSize * 2.0,
        right: defaultSize * 2.0,
      ),
      // height: 500.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultSize * 1.2),
          topRight: Radius.circular(defaultSize * 1.2),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              product.subTitle,
              style: TextStyle(
                fontSize: defaultSize * 1.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            addVerticalSpace(defaultSize * 3.0),
            Text(
              product.description,
              style: TextStyle(
                color: textColor.withOpacity(0.7),
                height: 1.5,
              ),
            ),
            addVerticalSpace(defaultSize * 3.0),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: press,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(defaultSize * 1.5),
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: defaultSize * 1.6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
