import 'package:flutter/material.dart';
import 'area_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menú de Figuras')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Opciones de Cálculo')),
            ListTile(
              title: Text('Círculo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AreaScreen(shape: 'Círculo'),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Cuadrado'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AreaScreen(shape: 'Cuadrado'),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Rectángulo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AreaScreen(shape: 'Rectángulo'),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Triángulo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AreaScreen(shape: 'Triángulo'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Seleccione una figura desde el menú'),
      ),
    );
  }
}
