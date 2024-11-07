/*
Ejercicio 2: Números de Fibonacci hasta N términos
Implementa un programa que genere la secuencia de Fibonacci hasta un número n de
términos ingresado por el usuario. Utiliza un bucle while o for para ir generando 
los números de la secuencia.
*/
import 'dart:io';

void main() {
  stdout.write("Ingresa el número de términos de Fibonacci: ");
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1, siguiente;

  print("Secuencia de Fibonacci:");
  for (int i = 1; i <= n; i++) {
    stdout.write("$a ");
    siguiente = a + b;
    a = b;
    b = siguiente;
  }
  print("");
}
