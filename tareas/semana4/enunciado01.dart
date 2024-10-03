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
