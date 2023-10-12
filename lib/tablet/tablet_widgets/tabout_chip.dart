import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AboutChip {
  static aboutChip(BuildContext context, IconData icon, Color iconcolor,
      String chipname, String desc) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Chip(
              avatar: Icon(
                icon,
                color: iconcolor,
                size: MediaQuery.of(context).size.width * 0.018,
              ),
              label: Text(
                chipname,
                style: GoogleFonts.alegreya(
                  color: const Color(0xFFF0FFFF),
                  fontSize: MediaQuery.of(context).size.width * 0.015,
                  fontWeight: FontWeight.bold,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              elevation: 3,
              backgroundColor: Colors.grey.withOpacity(0.0),
              shadowColor: const Color(0xFFF0FFFF),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                desc,
                style: GoogleFonts.karla(
                  color: const Color(0xFFF0FFFF),
                  fontSize: MediaQuery.of(context).size.width * 0.018,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ));
  }
}
