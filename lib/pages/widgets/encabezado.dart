import 'package:flutter/material.dart';
import 'package:hellow/utils/responsive_size.dart';

///AQUÍ SE MUESTRA EL TÍTULO
Widget encabezado(BuildContext context) {
  return Container(
    width  :  sw(1, context),
    height : sh(0.1, context),
    color  : Colors.blueGrey.shade500,
    alignment: Alignment.center,
    child  : Text(
      'Ejemplo contador',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: sh(0.03, context),
        color: Colors.white
      ),
    ),
  );
}