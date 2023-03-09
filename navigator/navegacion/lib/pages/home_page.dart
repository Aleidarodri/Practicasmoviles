import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/pages/segundapagina.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "inicio",
                style: TextStyle(fontSize: 25),
              ),
              CupertinoButton(
                child: Text("Ir a la segunda pagina"),
                onPressed: () {
                  Route route = MaterialPageRoute(
                      builder: (__) => SegundaPagina(nombre: "Aleida"));

                  Navigator.push(context, route);
                  print("continua el codigo...");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
