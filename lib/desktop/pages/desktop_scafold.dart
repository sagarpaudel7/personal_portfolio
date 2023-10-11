import 'package:flutter/material.dart';
import 'package:personal_portfolio/desktop/pages/projects.dart';
import 'package:personal_portfolio/desktop/pages/skills.dart';
import 'package:personal_portfolio/desktop/widgets/navbar.dart';
import 'package:personal_portfolio/desktop/widgets/top_container.dart';

class DesktopScafold extends StatefulWidget {
  const DesktopScafold({super.key});

  @override
  State<DesktopScafold> createState() => _DesktopScafoldState();
}

class _DesktopScafoldState extends State<DesktopScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF040914),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const [
              NavBar(),
              TopContainer(),
              SizedBox(
                height: 170,
              ),
              SkillsPage(),
              Projects(),
            ],
          ),
        ),
      ),
    );
  }
}
