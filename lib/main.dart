import 'package:TheJenos/utils/static_values.dart';
import 'package:TheJenos/views/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheJenos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        primaryColorDark: primaryDarkColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
