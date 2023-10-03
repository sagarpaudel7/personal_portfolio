import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

//============ for PNG icons ================

class CircleIcon {
  static circleIcon(String assetImage, Color color) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 25, 15, 0),
      child: ZoomIn(
        delay: const Duration(milliseconds: 300),
        child: Ink(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF01EEFF),
              width: 2.5,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(50),
            hoverColor: Colors.deepOrange,
            splashColor: const Color(0xFF040914),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                assetImage,
                color: color,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
