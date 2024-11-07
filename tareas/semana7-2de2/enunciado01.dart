/*
En una universidad, los alumnos están clasificados en cuatro categorías. A cada categoría le
corresponde una pensión mensual distinta dada en la siguiente tabla:
Categoría Pensión
A S/. 550
B S/. 500
C S/. 460
D S/. 400
Semestralmente, la universidad efectúa rebajas en las pensiones de sus estudiantes a partir del
segundo ciclo basándose en el promedio ponderado del ciclo anterior en porcentajes dados en
la tabla siguiente:
Promedio Descuento
0 a 13.99 No hay descuento
14.00 a 15.99 10 %
16.00 a 17.99 12 %
18.00 a 20.00 15 %
Dado el promedio ponderado y la categoría de un estudiante, diseñe un programa que determine
cuánto de rebaja recibirá sobre su pensión actual y a cuánto asciende su nueva pensión.
*/
import 'dart:io';

void main(List<String> arguments) {
  List<String> categorias = ['A', 'B', 'C', 'D'];
  List<int> precios = [550, 500, 460, 400];

  print("Ingrese su Categoría (A, B, C, D):");
  stdout.write('Introduce tu Categoría: ');
  String categoriaString = stdin.readLineSync()?.toUpperCase() ?? '';

  stdout.write('Introduce tu Nota: ');
  String notaString = stdin.readLineSync() ?? '';
  double nota = double.tryParse(notaString) ?? 0;

  // Evaluar la categoría y calcular el resultado
  double resultado = evaluar(categoriaString, nota, categorias, precios);

  if (resultado != -1) {
    print('El monto a pagar es: \$${resultado.toStringAsFixed(2)}');
  } else {
    print('Categoría no reconocida.');
  }
}

double evaluar(String categoria, double nota, List<String> categorias, List<int> precios) {
  int index = categorias.indexOf(categoria);
  if (index == -1) {
    return -1;
  }
  double precioBase = precios[index].toDouble();

  if (nota < 14) {
    return precioBase;
  } else if (nota < 16) {
    return precioBase * 0.9;
  } else if (nota < 18) {
    return precioBase * 0.88;
  } else {
    return precioBase * 0.85;
  }
}
