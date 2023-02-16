import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Introduccion",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 212, 178, 240)))),
        leading: const Icon(
          Icons.star,
          size: 25,
          color: Color.fromARGB(255, 255, 180, 249),
        ),
      ),
      body: Text("Holi"),
    );
  }
}
