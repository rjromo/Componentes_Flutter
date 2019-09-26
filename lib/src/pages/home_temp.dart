import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho',
    'Nueve',
    'Diez'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemscorta(),
        physics: ScrollPhysics(parent: BouncingScrollPhysics()),
      ),
    );
  }

  List<Widget> _crearItemscorta() {
    return opciones.map((item) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.confirmation_number),
            title: Text('$item!'),
            subtitle: Text('Flutter is great'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
            contentPadding: EdgeInsets.all(5.0),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
