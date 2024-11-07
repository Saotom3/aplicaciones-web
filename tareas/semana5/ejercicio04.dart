/*
Ejercicio 4: Inversión de un número
Crea un programa que invierta los dígitos de un número entero ingresado por el 
usuario, utilizando un bucle while para extraer y reordenar los dígitos.
*/
import 'dart:io';

void main() {
  stdout.write("Ingresa un número entero: ");
  int numero = int.parse(stdin.readLineSync()!);
  int numeroInvertido = 0;

  while (numero != 0) {
    int digito = numero % 10; // Obtener el último dígito
    numeroInvertido = (numeroInvertido * 10) + digito; // Agregar el dígito invertido
    numero ~/= 10; // Eliminar el último dígito
  }

  print("El número invertido es: $numeroInvertido");
}
