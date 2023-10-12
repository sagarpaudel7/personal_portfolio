import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile/mobile_utils/tnav_text_style.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return navLogo("sagar.");
  }

  Widget navLogo(String textLogo) {
    return Center(
      child: Text(
        textLogo,
        style: NavTextLogo.textLogo(),
      ),
    );
  }
}
