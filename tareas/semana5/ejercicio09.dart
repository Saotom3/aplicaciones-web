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
