import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: QuizPages(),
    ));
  }
}

class QuizPages extends StatefulWidget {
  const QuizPages({super.key});

  @override
  State<QuizPages> createState() => _QuizPagesState();
}

class _QuizPagesState extends State<QuizPages> {
  List<Icon> puntuacion = [];

  List<String> preguntas = [
    '¿Los Globulos rojos viven 4 meses?',
    'El cuerpo Humano tiene 306 huesos',
    'La cobalamina es una vitamina?',
    '¿Los Globulos rojos viven 4 meses?',
    'El cuerpo Humano tiene 306 huesos',
    'La cobalamina es una vitamina?'
  ];

  List<bool> respuestas = [
    true,
    false,
    true,
    true,
    false,
    true,
  ];

  int numeroPregunta = 0;

  respuesta(bool respuestaUsuario) {
    if (numeroPregunta >= preguntas.length - 1) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text("Terminado"),
            content: Text("respuestas completadas"),
          );
        },
      );
    } else {
      bool respuestaCorrecta = respuestas[numeroPregunta];
      if (respuestaUsuario == respuestaCorrecta) {
        puntuacion.add(const Icon(
          Icons.check,
          color: Colors.green,
          size: 35,
        ));
      } else {
        puntuacion.add(const Icon(
          Icons.close,
          color: Colors.red,
          size: 35,
        ));
      }
      numeroPregunta++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              preguntas[numeroPregunta],
              style: TextStyle(fontSize: 30),
            )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        respuesta(true);
                      });
                    },
                    child: Text(
                      "Verdadero",
                      style: TextStyle(color: Colors.black),
                    ))),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        respuesta(false);
                      });
                    },
                    child: Text(
                      "Falso",
                      style: TextStyle(color: Colors.black),
                    ))),
          ),
        ),
        Row(
          children: puntuacion,
        )
      ],
    );
  }
}
