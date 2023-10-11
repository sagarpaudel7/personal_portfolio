import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ProfileCircle {
  static Widget profileCircle(BuildContext context) {
    return ZoomIn(
      delay: const Duration(milliseconds: 500),
      child: Ink(
        width: MediaQuery.of(context).size.width * .36,
        height: MediaQuery.of(context).size.width * .36,
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
              width: MediaQuery.of(context).size.width * .25,
              height: MediaQuery.of(context).size.width * .25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF3F00FF),
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
                      width: MediaQuery.of(context).size.width * .24,
                      height: MediaQuery.of(context).size.width * .24,
                      fit: BoxFit.cover,
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
