import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cronometer extends StatefulWidget {
  const Cronometer({super.key});

  @override
  _CronometerState createState() => _CronometerState();
}

class _CronometerState extends State<Cronometer> {
  int milisegundos = 0;

  //Temporales
  int submili = 0;

  late Timer timer;
  bool estaCorriendo = false;
  List<int> tiemposMeta = [];
  List<int> tiemposTotal = [];

  void iniciarCronometro() {
    if (!estaCorriendo) {
      timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
        milisegundos += 100;
        setState(() {});
      });
      estaCorriendo = true;
    }
  }

  void detenerCronometro() {
    timer.cancel();
    estaCorriendo = false;
  }

  String formatearTiempo(tiempo) {
    Duration duration = Duration(milliseconds: tiempo);

    String dosValores(int valor) {
      return valor >= 10 ? "$valor" : "0$valor";
    }

    String horas = dosValores(duration.inHours);
    String minutos = dosValores(duration.inMinutes.remainder(60));
    String segundos = dosValores(duration.inSeconds.remainder(60));
    String milisegundos = dosValores(duration.inMilliseconds.remainder(1000));

    String trim = milisegundos.substring(0, 2);

    return "$horas:$minutos:$segundos:$trim";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(formatearTiempo(milisegundos),
            style: const TextStyle(fontSize: 50, color: Colors.white)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CupertinoButton(
                onPressed: iniciarCronometro,
                child: const Icon(Icons.play_circle,
                    color: Color.fromARGB(255, 236, 184, 245), size: 50)),
            CupertinoButton(
                onPressed: detenerCronometro,
                child: const Icon(Icons.stop_circle,
                    size: 50, color: Color.fromARGB(255, 250, 158, 151))),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CupertinoButton(
                child: const Icon(Icons.check_circle,
                    size: 50, color: Color.fromARGB(255, 137, 193, 240)),
                onPressed: () {
                  if (estaCorriendo) {
                    if (tiemposMeta.isEmpty) {
                      tiemposMeta.insert(
                        0,
                        milisegundos,
                      );
                    } else {
                      tiemposMeta.insert(0, milisegundos - submili);
                    }
                    tiemposTotal.insert(
                      0,
                      (milisegundos),
                    );
                    submili = milisegundos;
                    setState(() {});
                  }
                }),
            CupertinoButton(
                child: const Icon(Icons.restart_alt_sharp,
                    size: 50, color: Colors.purple),
                onPressed: () {
                  milisegundos = 0;
                  submili = 0;
                  tiemposMeta.clear();
                  tiemposTotal.clear();
                  setState(() {});
                }),
          ],
        ),
        ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Vueltas',
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
            ],
          ),
          title: const Padding(
            padding: EdgeInsets.only(right: 60.0),
            child: Text('Tiempo',
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center),
          ),
          trailing: const Padding(
            padding: EdgeInsets.only(right: 60.0),
            child: Text('Total',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
        Expanded(
          child: Container(
              color: Color.fromARGB(76, 0, 0, 0),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    String tiempo;
                    String subtiempo;
                    int length = tiemposMeta.length;
                    Color color = Color.fromARGB(255, 207, 144, 226);
                    if (tiemposMeta.isEmpty) {
                      return const Text('');
                    }
                    if (index == 0) {
                      tiempo = formatearTiempo(milisegundos - submili);
                      subtiempo = formatearTiempo(milisegundos);
                    } else {
                      tiempo = formatearTiempo(tiemposMeta[index - 1]);
                      subtiempo = formatearTiempo(tiemposTotal[index - 1]);
                    }
                    return ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${(length - index) + 1}',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 234, 160, 247)),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      trailing: Text(subtiempo,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 234, 160, 247)),
                          textAlign: TextAlign.end),
                      title: Text(tiempo,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 234, 160, 247)),
                          textAlign: TextAlign.center),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Color.fromARGB(141, 245, 225, 244),
                      thickness: 2,
                    );
                  },
                  itemCount: tiemposMeta.length + 1)),
        ),
      ]),
    );
  }

  int tomarMayor(List<int> lista) {
    return lista.reduce(max);
  }

  int tomarMenor(List<int> lista) {
    return lista.reduce(min);
  }
}
