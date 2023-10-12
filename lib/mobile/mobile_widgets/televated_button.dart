// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LinkButton {
  static linkButton(
      BuildContext context, String icon, String name, String url) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.grey.withOpacity(0.25)),
          /*  maximumSize: MaterialStateProperty.all<Size>(
            Size(MediaQuery.of(context).size.width * 0.22, 40),
          ), */
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          overlayColor:
              MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.50)),
          shadowColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 206, 188, 180)),
        ),
        onPressed: () {
          url;

          html.window.open(url, '_blank');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              width: MediaQuery.of(context).size.width * .040,
              color: Colors.white,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
