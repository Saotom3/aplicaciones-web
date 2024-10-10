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
