/*
Ejercicio 1: Sumatoria de números primos en un rango
Escribe un programa que solicite dos números y calcule la sumatoria de los 
númerosprimos que existen entre esos dos valores. Utiliza un bucle for o while 
para recorrer los números en el rango y verifica si son primos.
*/
import 'dart:io';

bool esPrimo(int num) {
  if (num <= 1) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

void main() {
  stdout.write("Ingresa el número inicial: ");
  int inicio = int.parse(stdin.readLineSync()!);
  stdout.write("Ingresa el número final: ");
  int fin = int.parse(stdin.readLineSync()!);

  int sumatoria = 0;
  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      sumatoria += i;
    }
  }

  print("La suma de los números primos en el rango es: $sumatoria");
}
