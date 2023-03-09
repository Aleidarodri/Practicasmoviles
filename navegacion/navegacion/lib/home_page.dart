import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/screen/help_screen.dart';
import 'package:navegacion/screen/login_sreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("ir a login"),
            subtitle: Text("go to longin"),
            trailing: Icon(Icons.login),
            leading: CircleAvatar(
              child: Text("LG"),
            ),
            onTap: () {
              final ruta = MaterialPageRoute(
                builder: (_) => const LonginScreen(),
              );
              Navigator.push(context, ruta);
            },
          ),
          ListTile(
            title: Text("Ayuda"),
            subtitle: Text("ir a pagina ayuda"),
            trailing: Icon(Icons.help),
            leading: CircleAvatar(
              backgroundColor: Colors.amberAccent,
              child: Text(
                "HE",
                style: TextStyle(color: Colors.red),
              ),
            ),
            onTap: () {
              final ruta = MaterialPageRoute(
                builder: (_) => const HelpScreen(),
              );
              Navigator.push(context, ruta);
            },
          ),
        ],
      ),
    );
  }
}
