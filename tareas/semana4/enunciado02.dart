import 'dart:io';

void main() {
  // Solicitar la edad del hombre
  print('Ingrese la edad del hombre:');
  int edad = int.parse(stdin.readLineSync()!);

  // Solicitar el nivel del sistema de beneficio
  print('Ingrese el nivel del sistema de beneficio (1, 2, 3, o mayor):');
  int nivel = int.parse(stdin.readLineSync()!);

  // Determinar el costo y descuento basado en la edad y el nivel
  double costo = obtenerCosto(edad);
  double descuento = obtenerDescuento(edad, nivel);

  // Calcular el valor final a pagar
  double montoDescuento = costo * descuento;
  double valorFinal = costo - montoDescuento;

  // Mostrar resultados
  print('Descuento aplicado: S/. ${montoDescuento.toStringAsFixed(2)}');
  print('Valor final a pagar: S/. ${valorFinal.toStringAsFixed(2)}');
}

double obtenerCosto(int edad) {
  if (edad > 18) {
    return 350; // Costo para mayores de 18 años
  } else if (edad == 18) {
    return 200; // Costo para hombres de 18 años
  } else {
    print('No se aplica la libreta militar a menores de 18 años.');
    return 0; // No aplica a menores de 18
  }
}

double obtenerDescuento(int edad, int nivel) {
  if (edad > 18) {
    switch (nivel) {
      case 1:
        return 0.40; // 40% para nivel 1
      case 2:
        return 0.30; // 30% para nivel 2
      case 3:
        return 0.15; // 15% para nivel 3
      default:
        return 0; // Sin descuento para otros niveles
    }
  } else if (edad == 18) {
    switch (nivel) {
      case 1:
        return 0.60; // 60% para nivel 1
      case 2:
        return 0.40; // 40% para nivel 2
      case 3:
        return 0.20; // 20% para nivel 3
      default:
        return 0; // Sin descuento para otros niveles
    }
  } else {
    return 0; // No aplica descuento para menores de 18
  }
}
