import 'package:flutter/material.dart';

Color primaryColor = Color(0xFF4d88ff);
Color primaryDarkColor = Color(0xFF090f20);

TextStyle headline3(context) => Theme.of(context)
    .textTheme
    .headline3
    .copyWith(color: Colors.white, fontWeight: FontWeight.w400);

TextStyle headline6(context) => Theme.of(context)
    .textTheme
    .headline6
    .copyWith(color: Colors.white, fontWeight: FontWeight.w400);


