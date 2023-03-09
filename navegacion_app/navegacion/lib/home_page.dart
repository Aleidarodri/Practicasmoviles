import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/inicio_page.dart';
import 'package:navegacion/screen/arnold_screen.dart';
import 'package:navegacion/screen/danny_screen.dart';
import 'package:navegacion/screen/dragon_pages.dart';

import 'package:navegacion/screen/kim_screen.dart';
import 'package:navegacion/screen/login_screen.dart';
import 'package:navegacion/screen/rugrats_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("               Caricaturas 2000",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              )),
          backgroundColor: Color(0xFFada7c9),
        ),
        body: ListView(
          children: [
            //1.-
            ListTile(
              minLeadingWidth: 10,
              title: Text("¡Oye Arnold!"),
              subtitle: Text(
                "Nickelodeon",
                style: TextStyle(color: Colors.orange),
              ),
              trailing: Icon(
                Icons.connected_tv_sharp,
                color: Colors.orange,
              ),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/arnold.jpg'),
              ),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const ArnoldPages(),
                );
                Navigator.push(context, ruta);
              },
            ),
            Divider(
              color: Color.fromARGB(96, 158, 158, 158),
              height: 20, //altura
              thickness: 0.2, //grosor
              indent: 10, //donde empieza
              endIndent: 6, //donde termina
            ),

            //2do
            ListTile(
              title: Text("Dragon Occidental"),
              subtitle: Text(
                "Disney",
                style: TextStyle(color: Color.fromARGB(255, 1, 27, 255)),
              ),
              trailing: Icon(
                Icons.connected_tv_sharp,
                color: Color.fromARGB(255, 1, 27, 255),
              ),
              leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/dragon.jpg')),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const DragonPages(),
                );
                Navigator.push(context, ruta);
              },
            ),
            Divider(
              color: Color.fromARGB(95, 138, 137, 137),
              height: 20, //altura
              thickness: 0.2, //grosor
              indent: 10, //donde empieza
              endIndent: 6, //donde termina
            ),

            //3ro
            ListTile(
              title: Text("Rugrats"),
              subtitle: Text(
                "Nickelodeon",
                style: TextStyle(color: Colors.orange),
              ),
              trailing: Icon(
                Icons.connected_tv_sharp,
                color: Colors.orange,
              ),
              leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/rugrats.jpg')),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const RugratsPages(),
                );
                Navigator.push(context, ruta);
              },
            ),
            Divider(
              color: Color.fromARGB(95, 138, 137, 137),
              height: 20, //altura
              thickness: 0.2, //grosor
              indent: 10, //donde empieza
              endIndent: 6, //donde termina
            ),
            ListTile(
              title: Text("Danny Phanthom"),
              subtitle: Text(
                "Nickelodeon",
                style: TextStyle(color: Colors.orange),
              ),
              trailing: Icon(
                Icons.connected_tv_sharp,
                color: Colors.orange,
              ),
              leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/danny.jpg')),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const DannyPages(),
                );
                Navigator.push(context, ruta);
              },
            ),
            Divider(
              color: Color.fromARGB(95, 138, 137, 137),
              height: 20, //altura
              thickness: 0.2, //grosor
              indent: 10, //donde empieza
              endIndent: 6, //donde termina
            ),
            //5to
            ListTile(
              title: Text("Kim Posible"),
              subtitle: Text(
                "Disney",
                style: TextStyle(color: Color.fromARGB(255, 1, 27, 255)),
              ),
              trailing: Icon(
                Icons.connected_tv_sharp,
                color: Color.fromARGB(255, 1, 27, 255),
              ),
              leading: CircleAvatar(
                  radius: 30.0, backgroundImage: AssetImage('assets/kim.jpg')),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const KimPages(),
                );
                Navigator.push(context, ruta);
              },
            ),
            Divider(
              color: Color.fromARGB(95, 138, 137, 137),
              height: 20, //altura
              thickness: 0.2, //grosor
              indent: 10, //donde empieza
              endIndent: 6, //donde termina
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final ruta = MaterialPageRoute(
              builder: (_) => const InicioPage(),
            );
            Navigator.push(context, ruta);
          },
          child: const Icon(Icons.home),
        ));
  }
}
