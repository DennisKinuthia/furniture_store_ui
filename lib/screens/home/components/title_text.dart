import 'package:flutter/material.dart';
import 'package:furniture_store/utils/size_config.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      text,
      style: TextStyle(
        fontSize: defaultSize * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
