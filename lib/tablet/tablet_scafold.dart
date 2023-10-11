import 'package:flutter/material.dart';

class TabletScafold extends StatelessWidget {
  const TabletScafold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My portfolio"),
      ),
      drawer: Drawer(),
      body: Column(
        children: [Text("This for tablet screen")],
      ),
    );
  }
}
