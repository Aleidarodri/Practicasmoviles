import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/home_page.dart';
import 'package:navegacion/screen/kim_screen.dart';

class DannyPages extends StatelessWidget {
  const DannyPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/danny.jpg'),
                ),
                Text(
                  'Danny Phantom',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Color.fromARGB(255, 25, 255, 4),
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
                        'Danny Phantom se centra en la vida y las aventuras de Danny Fenton , un chico de catorce años que vive en el pequeño pueblo de Amity Park. Vive con sus padres cazadores de fantasmas, Jack y Maddie,y su sobreprotectora pero cariñosa hermana de dieciséis años, Jazz.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 143, 143, 142),
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
        backgroundColor: Color.fromARGB(255, 145, 145, 145),
        onPressed: () {
          final ruta = MaterialPageRoute(
            builder: (_) => const HomePage(),
          );
          Navigator.push(context, ruta);
        },
        child: const Icon(
          Icons.arrow_circle_right,
          color: Color.fromARGB(255, 33, 243, 33),
        ),
      ),
    );
  }
}
