import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Inputs extends StatefulWidget {
  final String labelNombre;

  const Inputs({required this.labelNombre, super.key});

// const Inputs({this.labelNombre='data', super.key}); para cuando no pida el dato

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    print(widget.labelNombre);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
              icon: Icon(Icons.people),
              iconColor: Color.fromARGB(255, 200, 55, 226),
              // label: Text('Nombre'),
              labelText: widget.labelNombre,
              labelStyle: TextStyle(color: Colors.black),
              helperText: 'En este campo se captura el nombre',
              // errorText: 'No se puede ir vacio'
              // isCollapsed: true,
              contentPadding: EdgeInsets.all(10),
              prefixIcon: Icon(Icons.abc),
              // prefix: Icon(Icons.home),
              suffix: Icon(Icons.remove_red_eye),
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              )),

          // style: TextStyle(
          //     fontSize: 20, backgroundColor: Color.fromARGB(255, 229, 176, 238)),
          // obscureText: true,
          // obscuringCharacter: ' ',
          // keyboardAppearance: Brightness.dark,
          // cursorRadius: Radius.circular(20),
          // keyboardType: TextInputType.multiline,
          // maxLines: 4,
          // maxLength: 20,
          // textCapitalization: TextCapitalization.words,
        ),
      ),
    );
  }
}
