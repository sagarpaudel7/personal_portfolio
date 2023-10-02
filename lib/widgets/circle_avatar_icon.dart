import 'package:flutter/material.dart';

//============ for PNG icons ================

class CircleIcon {
  static circleIcon(String assetImage, Color color, double width) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
      child: CircleAvatar(
        backgroundColor: const Color(0xFF01EEFF),
        radius: 25,
        child: CircleAvatar(
          backgroundColor: const Color(0xFF040914),
          radius: 22,
          child: Image.asset(
            assetImage,
            color: color,
            width: width,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
