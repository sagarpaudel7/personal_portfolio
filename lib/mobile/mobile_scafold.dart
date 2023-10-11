import 'package:flutter/material.dart';

class MobileScafold extends StatelessWidget {
  const MobileScafold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My portfolio"),
      ),
      drawer: Drawer(),
      body: Column(children: [
        Text("This for mobile screen"),
      ]),
    );
  }
}
