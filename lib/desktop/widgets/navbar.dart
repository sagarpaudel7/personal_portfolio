import 'package:flutter/material.dart';
import 'package:personal_portfolio/desktop/utils/nav_text_style.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.070,
          30, MediaQuery.of(context).size.width * 0.070, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          navLogo("sagar."),
          Row(
            children: [
              navButton("Home"),
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
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .020,
      ),
      child: Text(
        text,
        style: NavTextStyle.navStyle(),
      ),
    );
  }
}
