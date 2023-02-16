import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 205, 162, 255),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/ale.jpg'),
              ),
              Text(
                'Aleida Rodriguez',
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Estudiante',
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
                    Icons.phone_outlined,
                    color: Color.fromARGB(255, 162, 0, 255),
                  ),
                  title: Text(
                    '646 123-45-67',
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
                    Icons.email_outlined,
                    color: Color.fromARGB(255, 162, 0, 255),
                  ),
                  title: Text(
                    'aleida.rodriguez@gmail.com',
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
      ),
    );
  }
}
