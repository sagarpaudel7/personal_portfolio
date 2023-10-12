import 'package:flutter/material.dart';

class MobileScafold extends StatelessWidget {
  const MobileScafold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My portfolio"),
      ),
      drawer: const Drawer(),
      body: Column(children: const [
        Text("This for mobile screen"),
      ]),
    );
  }
}
