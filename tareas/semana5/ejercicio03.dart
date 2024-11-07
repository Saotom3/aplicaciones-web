/*
Ejercicio 3: Factorial de números grandes
Escribe un programa que calcule el factorial de un número grande (por ejemplo, 100)
utilizando estructuras repetitivas y el tipo de datos BigInteger para manejar 
grandes números.
*/
import 'dart:io';

BigInt factorial(BigInt n) {
  BigInt resultado = BigInt.one;
  for (BigInt i = BigInt.one; i <= n; i = i + BigInt.one) {
    resultado *= i;
  }
  return resultado;
}

void main() {
  stdout.write("Ingresa un número para calcular su factorial: ");
  BigInt numero = BigInt.parse(stdin.readLineSync()!);

  BigInt resultado = factorial(numero);

  print("El factorial de $numero es: $resultado");
}
