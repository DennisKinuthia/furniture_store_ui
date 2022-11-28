import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_store/utils/size_config.dart';
import 'package:go_router/go_router.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        context.pop();
        // Navigator.pop(context);
      },
      icon: SvgPicture.asset('assets/icons/arrow-long-left.svg'),
    ),
    actions: <Widget>[
      Center(
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/bag.svg'),
        ),
      ),
      SizedBox(
        width: SizeConfig.defaultSize,
      ),
    ],
  );
}
