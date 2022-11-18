import 'package:flutter/material.dart';
import 'package:furniture_store/screens/home/components/category_card.dart';
import 'package:furniture_store/models/category.dart';

class Categories extends StatelessWidget {
  const Categories({
    required this.categories,
    Key? key,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(category: categories[index]),
        ),
      ),
    );
  }
}
