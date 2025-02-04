// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultPadding = 20;
double defaultBorderRadius = 15;

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

Future downloadCV() async {
  html.AnchorElement anchorElement = html.AnchorElement(
      href:
          "https://drive.usercontent.google.com/download?id=1cSvZpTWNd04JyGNgi9TUXEOsJc_2Ivhf&export=download&authuser=0&confirm=t&uuid=5537780e-7813-42c9-84a2-f2bc5231a0a3&at=APZUnTUYwAhrnzlvjKsaes8x7_Ws:1721835354325");
  anchorElement.download =
      "https://drive.usercontent.google.com/download?id=1cSvZpTWNd04JyGNgi9TUXEOsJc_2Ivhf&export=download&authuser=0&confirm=t&uuid=5537780e-7813-42c9-84a2-f2bc5231a0a3&at=APZUnTUYwAhrnzlvjKsaes8x7_Ws:1721835354325";
  anchorElement.click();
}

Color tertiary700 = const Color(0xFF000563);
Color tertiary600 = const Color(0xFF0012b9);
Color tertiary500 = const Color(0xFF2632ff);
Color tertiary400 = const Color(0xFF6569ff);
Color tertiary300 = const Color(0xFF9597FF);
Color tertiary200 = const Color(0xFFc2c3ff);
Color tertiary100 = const Color(0xFFEFEFFF);
Color grey700 = const Color(0xFF111114);
Color grey600 = const Color(0xFF2b2b30);
Color grey500 = const Color(0xFF4b4b53);
Color grey400 = const Color(0xFF6d6d75);
Color black = const Color(0xFF000000);
Color white = const Color(0xFFFFFFFF);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: black,
  fontWeight: bold,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: white,
  fontWeight: regular,
);
