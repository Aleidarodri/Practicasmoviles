import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Ball8 extends StatefulWidget {
  const Ball8({super.key});

  @override
  State<Ball8> createState() => _Ball8State();
}

class _Ball8State extends State<Ball8> {
  var imagen = 1;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      cambio(Random().nextInt(5) + 1),
    ]);
  }

  Expanded cambio(imagen) {
    return Expanded(
        child: TextButton(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/images/$imagen.png"),
      ),
      onPressed: () {
        setState(() {});
      },
    ));
  }
}
