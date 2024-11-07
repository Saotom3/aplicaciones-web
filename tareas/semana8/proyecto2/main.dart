/*
Implementar una app que permite implementar lo siguiente:
-Una ventana login (validar el ingreso de datos con su correo electronico)
-Una ventana de menú de opciones (incluir un menú lateral) para hallar el
área de las 04 figuras geométricas.
-Realizar cuatro (04) métodos que calculen área de figuras geométricas
(círculo, cuadrado, rectángulo y triángulo)
*/
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto 2',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}
