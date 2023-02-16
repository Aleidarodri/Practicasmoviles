import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:magic_8ball/ball8.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Dados')),
      ),
      body: const Ball8(),
    );
  }
}
