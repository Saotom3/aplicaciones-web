/*
En una universidad, los alumnos están categorizados en cuatro categorías. 
A cada categoría le corresponde una pensión mensual distinta dada en la 
siguiente tabla: 
Categoría Pensión 
A S/. 550 
B S/. 500 
C S/. 460 
D S/. 400 
Semestralmente, la universidad efectúa rebajas en las pensiones de sus 
estudiantes a partir del segundo ciclo en base al promedio ponderado del 
ciclo anterior en porcentajes dados en la tabla siguiente: 
Nota Promedio Promedio Descuento 
0 a13.99 No hay descuento 
14.00 a 15.99 10 % 
16.00 a 17.99 12 % 
18.00 a 20.00 15 % 
Implemente una aplicación utilizando lenguaje Dart que determine cuánto de 
rebaja recibirá un estudiante sobre su pensión actual y a cuánto asciende su 
nueva pensión.
*/
import 'dart:io';

void main() {
  // Solicitar la categoría del estudiante
  print('Ingrese la categoría del estudiante (A, B, C, D):');
  String? categoria = stdin.readLineSync();

  // Solicitar el promedio del ciclo anterior
  print('Ingrese el promedio ponderado del ciclo anterior:');
  double promedio = double.parse(stdin.readLineSync()!);

  // Obtener la pensión base
  double pensionBase = obtenerPensionBase(categoria!);
  if (pensionBase == 0) {
    print('Categoría no válida.');
    return;
  }

  // Obtener el porcentaje de descuento
  double descuento = obtenerDescuento(promedio);
  if (descuento == -1) {
    print('Promedio no válido.');
    return;
  }

  // Calcular la nueva pensión
  double montoDescuento = pensionBase * descuento;
  double nuevaPension = pensionBase - montoDescuento;

  // Mostrar resultados
  print('Descuento aplicado: S/. ${montoDescuento.toStringAsFixed(2)}');
  print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
}

double obtenerPensionBase(String categoria) {
  switch (categoria.toUpperCase()) {
    case 'A':
      return 550;
    case 'B':
      return 500;
    case 'C':
      return 460;
    case 'D':
      return 400;
    default:
      return 0; // Categoría no válida
  }
}

double obtenerDescuento(double promedio) {
  if (promedio >= 0 && promedio < 14) {
    return 0; // No hay descuento
  } else if (promedio >= 14 && promedio < 16) {
    return 0.10; // 10%
  } else if (promedio >= 16 && promedio < 18) {
    return 0.12; // 12%
  } else if (promedio >= 18 && promedio <= 20) {
    return 0.15; // 15%
  } else {
    return -1; // Promedio no válido
  }
}
