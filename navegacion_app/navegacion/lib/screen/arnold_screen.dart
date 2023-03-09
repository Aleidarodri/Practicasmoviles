import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/home_page.dart';
import 'package:navegacion/screen/dragon_pages.dart';
import 'package:navegacion/screen/login_screen.dart';
import 'package:navegacion/screen/rugrats_screen.dart';

class ArnoldPages extends StatelessWidget {
  const ArnoldPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 103, 177, 238),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/arnold.jpg'),
                ),
                Text(
                  '¡Oye Arnold!',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Color.fromARGB(255, 238, 255, 4),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                  width: 150.0,
                  child: Divider(
                    color: Color.fromARGB(255, 253, 249, 1),
                  ),
                ),
                Container(
                  height: 500,
                  width: 350,
                  child: Text(
                    '¡Oye, Arnold! (originalmente en inglés: Hey, Arnold!) es una serie animada estadounidense, producida por la cadena Nickelodeon, que muestra, dicho a grandes rasgos, la vida de un niño de 9 años en los suburbios del pueblo en el que vive; Arnold, junto a sus amigos, cursan el cuarto grado de primaria en la escuela pública 118 de Hillwood City, una gran ciudad ficticia ubicada en el estado de Washington, pero que mezcla elementos de Nueva York, Seattle, y hasta de Londres.',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 25,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          final ruta = MaterialPageRoute(
            builder: (_) => const RugratsPages(),
          );
          Navigator.push(context, ruta);
        },
        child: const Icon(
          Icons.arrow_circle_right,
          color: Colors.blue,
        ),
      ),
    );
  }
}
