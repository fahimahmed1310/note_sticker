import 'dart:ui';

import 'package:flutter/material.dart';

class AppConstants{



  static const String appTitleFirstName = "note";
  static const String appTitleSecondName = "sticker";


  static const Color primaryColor = Color(0xFFF0ECE5);
  static const Color secondaryColor = Color(0xFFB6BBC4);
  static const Color backgroundColor = Color(0xFF31304D);


  static const TextStyle appTitleFirstPartTextStyle = TextStyle(
    color: primaryColor,
    fontSize: 40,
    fontWeight: FontWeight.bold,
    fontFamily: "Product"
  );

  static const TextStyle appTitleSecondPartTextStyle = TextStyle(
      color: secondaryColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: "Product"
  );

  static const TextStyle titleTextStyle = TextStyle(
      fontFamily: "Product",
      fontWeight: FontWeight.bold,
      fontSize: 20
  );

  static const TextStyle dateTimeTextStyle = TextStyle(
      fontFamily: "Product",
      fontWeight: FontWeight.bold,
      fontSize: 17
  );

  static const TextStyle descriptionTextStyle = TextStyle(
      fontFamily: "Product",
      fontSize: 15,
      fontWeight: FontWeight.normal
  );


}