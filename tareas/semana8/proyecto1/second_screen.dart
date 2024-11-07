import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Ventana'),
      ),
      body: Center(
        child: Text(
          'Marko',  // Reemplaza con tu nombre
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
