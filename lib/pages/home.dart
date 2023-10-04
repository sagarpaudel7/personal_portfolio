import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/projects.dart';
import 'package:personal_portfolio/pages/skills.dart';
import 'package:personal_portfolio/widgets/navbar.dart';
import 'package:personal_portfolio/widgets/top_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              SkillsPage(),
              Projects(),
            ],
          ),
        ),
      ),
    );
  }
}
