import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/home_page.dart';

class KimPages extends StatelessWidget {
  const KimPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 245, 194),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/kim.jpg'),
                ),
                Text(
                  'Kim Possible',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Color.fromARGB(255, 245, 147, 1),
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
                        'Kim Possible, una adolescente que combate el crimen de forma regular, mientras que debe enfrentar a los problemas cotidianos comúnmente asociados con la adolescencia. Kim Possible es ayudada por su torpe y mejor amigo y compañero Ron Imparable , la rata topo desnuda Rufus y Wade, un genio de la computadora de 10 años de edad. ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
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
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        onPressed: () {
          final ruta = MaterialPageRoute(
            builder: (_) => const HomePage(),
          );
          Navigator.push(context, ruta);
        },
        child: const Icon(
          Icons.arrow_circle_right,
          color: Color.fromARGB(248, 125, 243, 141),
        ),
      ),
    );
  }
}
