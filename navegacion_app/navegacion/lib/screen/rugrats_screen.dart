import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/screen/danny_screen.dart';

class RugratsPages extends StatelessWidget {
  const RugratsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 216, 218),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/rugrats.jpg'),
                ),
                Text(
                  'Rugrats',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Color.fromARGB(255, 147, 23, 179),
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
                        'Un grupo de bebés llamados Tommy,Carlitos ,los gemelos Fili y Lili ,la prima de Tommy llamada Angélica y Susie. Este narra los acontecimientos de la vida diaria de los bebés y sus experiencias en común,estas mismas se convierten en aventuras en la imaginación de los pequeños.',
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
        backgroundColor: Color.fromARGB(255, 0, 195, 255),
        onPressed: () {
          final ruta = MaterialPageRoute(
            builder: (_) => const DannyPages(),
          );
          Navigator.push(context, ruta);
        },
        child: const Icon(
          Icons.arrow_circle_right,
          color: Color.fromARGB(248, 217, 194, 255),
        ),
      ),
    );
  }
}
