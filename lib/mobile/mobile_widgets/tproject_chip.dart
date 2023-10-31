import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ProjectChip {
  static projectChip(BuildContext context, String chipname) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
      child: Chip(
        label: Text(
          "# $chipname",
          style: GoogleFonts.alegreya(
            color: const Color(0xFF000000),
            fontSize: MediaQuery.of(context).size.width * 0.030,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 3,
        backgroundColor: const Color(0xFF00FFFF),
        shadowColor: const Color(0xFFF0FFFF),
      ),
    );
  }
}
