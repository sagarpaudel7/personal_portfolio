import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectText {
  static TextStyle projectText(BuildContext context) {
    return GoogleFonts.karla(
      fontSize: MediaQuery.of(context).size.width * 0.030,
      fontWeight: FontWeight.bold,
      color: const Color(0xFFFCFCFF),
    );
  }
}
