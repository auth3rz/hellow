import 'package:flutter/material.dart';
import 'package:hellow/utils/responsive_size.dart';

///AQUÍ SE MUESTRA LA CANTIDAD DE TABS
Widget cuerpo(int cant, BuildContext context) {
  return Container(
    width: sw(1, context),
    alignment: Alignment.center,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '$cant',
          style: TextStyle(
            fontSize: sh(0.2, context),
            fontWeight: FontWeight.w200,
            color: Colors.blueGrey.shade800
          ),
        ),
        Text(
          'tab${cant == 1 ? '' : 's'}',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.blueGrey.shade800
          ),
        )
      ],
    ),
  );
}