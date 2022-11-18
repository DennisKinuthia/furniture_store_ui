import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_store/screens/home/home.dart';
import 'package:furniture_store/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture Store',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        ),
        textTheme: GoogleFonts.dmSansTextTheme().apply(displayColor: textColor),
      ),
      home: const Home(),
    );
  }
}
