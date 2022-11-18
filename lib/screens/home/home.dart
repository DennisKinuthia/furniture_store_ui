// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_store/screens/home/components/home_body.dart';
import 'package:furniture_store/screens/home/components/appbar.dart';
import 'package:furniture_store/utils/size_config.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}
