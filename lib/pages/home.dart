import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/navbar.dart';

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
      body: Column(
        children: const [
          NavBar(),
        ],
      ),
    );
  }
}
