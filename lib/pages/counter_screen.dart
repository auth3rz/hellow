import 'package:flutter/material.dart';
import 'package:hellow/pages/widgets/cuerpo.dart';
import 'package:hellow/pages/widgets/encabezado.dart';
import 'package:hellow/utils/responsive_size.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  var cant = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            encabezado(context),
            cuerpo(cant, context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                botonBasico(false, Icons.remove_circle, Colors.red.shade800),
                botonBasico(null,  Icons.replay_circle_filled_rounded, Colors.grey.shade800),
                botonBasico(true,  Icons.add_circle, Colors.green.shade800),
              ],
            )
          ],
          
        )
      ),
    );
  }

  ///ESTO ES UN BOTÓN BÁSICO
  Widget botonBasico(bool ? queHace, IconData icono, Color color) {
    return GestureDetector(
      onTap: () => cambiaCant(queHace),
      child: Container(
        margin: EdgeInsets.all(sw(0.02, context)),
        child: Icon(
          icono,
          size: sh(0.075, context),
          color: color,
        ),
      ),
    );
  }

  ///AQUÍ MODIFICO EL VALOR QUE SE MUESTRA
  void cambiaCant(bool ? data) {
    if (data == null) {
      cant = 0;
    } else {
      if (data) {
        cant++;
      } else {
        if (cant >= 1) {
          cant--;
        }
      }
    }
    setState(() {});
  }
}