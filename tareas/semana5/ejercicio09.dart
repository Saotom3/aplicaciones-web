/*
Ejercicio 9: Cálculo de potencias usando multiplicación repetida
Crea un programa que calcule la potencia de un número usando multiplicación 
repetida, es decir, sin utilizar la función Math.pow(). El programa debe 
solicitar una base y un exponente, y luego calcular la potencia utilizando 
un bucle while o for.
*/
import 'dart:io';

void main() {
  stdout.write("Ingresa la base: ");
  int base = int.parse(stdin.readLineSync()!);
  stdout.write("Ingresa el exponente: ");
  int exponente = int.parse(stdin.readLineSync()!);

  int resultado = 1;
  for (int i = 0; i < exponente; i++) {
    resultado *= base;
  }

  print("El resultado de $base elevado a la $exponente es: $resultado");
}
