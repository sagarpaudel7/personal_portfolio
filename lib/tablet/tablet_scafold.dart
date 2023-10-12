import 'package:flutter/material.dart';

class TabletScafold extends StatelessWidget {
  const TabletScafold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My portfolio"),
      ),
      drawer: const Drawer(),
      body: Column(
        children: const [Text("This for tablet screen")],
      ),
    );
  }
}
