/*
El ejército nacional ha decidido hacer una jornada de ventas de libretas militares
para muchos hombres que no han definido su situación militar u otros que no son 
aptos para prestar el servicio. Además de la edad de joven, se tendrá en cuenta el 
nivel del sistema de beneficio de la persona. Para todos los hombres mayores de 18 
años la libreta tendrá un costo de S/. 350, pero para aquellos que tengan nivel 1 
se les hará un descuento del 40%; para los de nivel 2, el descuento será del 30%; 
para nivel 3 del 15%; y para los demás estratos o niveles no habrá descuento. Para 
los jóvenes con los 18 años la libreta tiene un costo de S/. 200 y los jóvenes con 
nivel del sistema de beneficio 1, tendrán un descuento del 60%; para los de nivel 2, 
descuento del 40%; para los del 3, un descuento del 20% y para los demás estratos no 
habrá descuento. Realizar una aplicación que tome la edad y el nivel del sistema de 
beneficio de un hombre y nos muestre descuento que le hacen y su valor final a pagar.
*/
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
