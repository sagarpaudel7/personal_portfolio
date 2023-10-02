import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ProfileCircle {
  static profileCircle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 130, 0),
      child: ZoomIn(
        delay: const Duration(milliseconds: 500),
        child: Ink(
          width: 550,
          height: 550,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF01EEFF),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(1000),
          ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: ZoomIn(
              delay: const Duration(milliseconds: 500),
              child: Ink(
                width: 450.0,
                height: 450.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 2.0,
                  ),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: ClipOval(
                    child: ZoomIn(
                      delay: const Duration(milliseconds: 500),
                      child: Image.asset(
                        "assets/images/profile.png",
                        width: 300.0,
                        height: 300.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
