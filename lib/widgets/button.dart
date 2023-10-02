import 'package:flutter/material.dart';

class MainButton {
  static mainButton() {
    return MaterialButton(
      onPressed: () {},
      height: 40,
      minWidth: 100,
      color: Colors.blueAccent,
      hoverColor: Colors.deepOrange,
      elevation: 5,
      splashColor: const Color(0xFF040914),
      focusElevation: 10,
      focusColor: Colors.white,
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Text(
        " Download CV",
        style: TextStyle(
          color: Color(0xFFffffff),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
