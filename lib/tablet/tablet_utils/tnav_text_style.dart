import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//========== for nav text logo =========
class NavTextLogo {
  static TextStyle textLogo() {
    return GoogleFonts.karla(
      fontSize: 24,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }
}

//====== for nav items ===========
class NavTextStyle {
  static TextStyle navStyle() {
    return GoogleFonts.mukta(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}
