import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_store/utils/size_config.dart';
import 'package:furniture_store/utils/constants.dart';

AppBar buildAppBar() {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        'assets/icons/menu.svg',
        height: SizeConfig.defaultSize * 2.0,
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/scan.svg',
          height: SizeConfig.defaultSize * 2.4,
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Center(
          child: Text(
            'Scan',
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
    ],
  );
}
