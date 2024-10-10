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
