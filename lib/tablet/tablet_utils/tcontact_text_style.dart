import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactTextStyle {
  static TextStyle contactTextStyle(double size, Color color) {
    return GoogleFonts.karla(
      fontSize: size,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }
}
