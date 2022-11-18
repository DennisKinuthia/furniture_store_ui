// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_store/screens/details/components/product_body.dart';
import 'package:furniture_store/models/product.dart';
import 'package:furniture_store/screens/details/components/appbar.dart';
import 'package:furniture_store/utils/constants.dart';
import 'package:furniture_store/utils/size_config.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }
}
