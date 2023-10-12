import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class TabletCircle {
  static Widget tabletCircle(BuildContext context) {
    return ZoomIn(
      delay: const Duration(milliseconds: 500),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Ink(
          width: MediaQuery.of(context).size.width * .90,
          height: MediaQuery.of(context).size.width * .90,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFff5f15).withOpacity(0.25),
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
                    color: const Color(0xFF3F00FF).withOpacity(0.25),
                    width: 2.0,
                  ),
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
