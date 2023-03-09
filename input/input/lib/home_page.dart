import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'inputs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: Column(
        children: [
          Inputs(
            labelNombre: 'Aleida',
          ),
          Inputs(
            labelNombre: 'Rodriguez',
          ),
          Inputs(
            labelNombre: 'Holi',
          )
        ],
      ),
    );
  }
}
