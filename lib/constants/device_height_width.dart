import 'package:flutter/widgets.dart';

class DeviceDimensions {
  double screenWidth = 0;
  double screenHeight = 0;

  // Create a private constructor for the singleton
  DeviceDimensions._private();

  // Create a static instance of the class
  static final DeviceDimensions instance = DeviceDimensions._private();

  // Initialize the device dimensions
  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}
