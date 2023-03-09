import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/screen/kim_screen.dart';
import 'package:navegacion/screen/rugrats_screen.dart';

class DragonPages extends StatelessWidget {
  const DragonPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 168, 164, 164),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/dragon.jpg'),
                ),
                Text(
                  'El Dragón occidental',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Color.fromARGB(255, 250, 0, 0),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                  width: 150.0,
                  child: Divider(
                    color: Color.fromARGB(255, 207, 207, 207),
                  ),
                ),
                Container(
                  height: 500,
                  width: 350,
                  child: Text(
                    '\n' +
                        'Jake es descendiente de una larga línea de dragones, y es su deber como dragón es la de proteger a la comunidad de seres mágicos que habitan de forma secreta en todos los sectores de Nueva York, como lo son la Quimera. Vive con sus padres, Johnathan y Susan, y su hermana de 8 años, Haley.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 188, 4),
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
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        onPressed: () {
          final ruta = MaterialPageRoute(
            builder: (_) => const KimPages(),
          );
          Navigator.push(context, ruta);
        },
        child: const Icon(
          Icons.arrow_circle_right,
          color: Color.fromARGB(255, 255, 0, 0),
        ),
      ),
    );
  }
}
