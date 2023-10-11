import 'package:flutter/material.dart';
import 'package:personal_portfolio/desktop/pages/desktop_scafold.dart';
import 'package:personal_portfolio/mobile/mobile_scafold.dart';
import 'package:personal_portfolio/responsive/responsive_scafold.dart';
import 'package:personal_portfolio/tablet/tablet_scafold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Portfolio',
      theme: ThemeData(
        brightness: Brightness.dark,
        //  primarySwatch: Colors.blue,
      ),
      home: const ResponsiveScafold(
        mobileScafold: MobileScafold(),
        tabletScafold: TabletScafold(),
        desktopScafold: DesktopScafold(),
      ),
    );
  }
}
