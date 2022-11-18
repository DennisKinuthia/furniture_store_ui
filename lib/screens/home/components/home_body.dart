// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_store/screens/home/components/title_text.dart';
import 'package:furniture_store/screens/home/components/categories.dart';
import 'package:furniture_store/screens/home/components/recommended_products.dart';
import 'package:furniture_store/services/fetch_categories.dart';
import 'package:furniture_store/services/fetch_products.dart';
import 'package:furniture_store/utils/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(defaultSize * 2.0),
              child: const TextTitle(text: 'Browse by Categories'),
            ),
            FutureBuilder(
              future: CategoriesApi().fetchCategory(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(categories: snapshot.data!)
                  : Center(
                      child: Image.asset('assets/ripple.gif'),
                    ),
            ),
            const Divider(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2.0),
              child: const TextTitle(text: 'Recommended for You'),
            ),
            FutureBuilder(
              future: ProductsApi().fetchProducts(),
              builder: (context, snapshot) => snapshot.hasData
                  ? RecommendedProducts(products: snapshot.data!)
                  : Image.asset('assets/ripple.gif'),
            ),
          ],
        ),
      ),
    );
  }
}
