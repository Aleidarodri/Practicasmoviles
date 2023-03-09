import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/home_page.dart';
import 'package:navegacion/screen/arnold_screen.dart';
import 'package:navegacion/screen/danny_screen.dart';
import 'package:navegacion/screen/dragon_pages.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 205, 162, 255),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('assets/fondo.jpg'),
              ),
              Text(
                'Informacion',
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '',
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 15.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25.0,
                width: 150.0,
                child: Divider(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.tv_sharp,
                    color: Color.fromARGB(255, 1, 27, 255),
                  ),
                  onTap: () {
                    final ruta = MaterialPageRoute(
                      builder: (_) => const DragonPages(),
                    );
                    Navigator.push(context, ruta);
                  },
                  title: Text(
                    'Original Disney',
                    style: TextStyle(
                      color: Color.fromARGB(255, 178, 120, 255),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                child: ListTile(
                  leading: Icon(
                    Icons.tv_sharp,
                    color: Colors.orange,
                  ),
                  onTap: () {
                    final ruta = MaterialPageRoute(
                      builder: (_) => const ArnoldPages(),
                    );
                    Navigator.push(context, ruta);
                  },
                  title: Text(
                    'Original Nickelodeon',
                    style: TextStyle(
                      color: Color.fromARGB(255, 178, 120, 255),
                      fontFamily: 'Itim',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final ruta = MaterialPageRoute(
              builder: (_) => const HomePage(),
            );
            Navigator.push(context, ruta);
          },
          backgroundColor: Colors.purple,
          child: const Icon(
            Icons.navigate_next,
            color: Colors.white,
          ),
        ));
  }
}
