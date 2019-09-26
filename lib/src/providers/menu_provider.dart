import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider();

  Future<List <dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map datamap = json.decode(resp);
    opciones.add(datamap['rutas']);
   
    return opciones;
  }
}

final menuProvider = _MenuProvider();
