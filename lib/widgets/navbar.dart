import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/nav_text_style.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(70, 20, 70, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navLogo("sagar."),
          Row(
            children: [
              navButton("Home"),
              navButton("About"),
              navButton("Services"),
              navButton("Portfolio"),
              navButton("Contact"),
            ],
          )
        ],
      ),
    );
  }

  Widget navLogo(String textLogo) {
    return Text(
      textLogo,
      style: NavTextLogo.textLogo(),
    );
  }

  Widget navButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Text(
        text,
        style: NavTextStyle.navStyle(),
      ),
    );
  }
}
