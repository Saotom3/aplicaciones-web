import 'dart:io';

void main() {
  stdout.write("Ingresa un número: ");
  int numero = int.parse(stdin.readLineSync()!);
  
  int original = numero;
  int suma = 0;
  int n = numero.toString().length; // Cantidad de dígitos

  while (numero > 0) {
    int digito = numero % 10;
    suma += (digito * digito * digito); // Elevar a la potencia n
    numero ~/= 10;
  }

  // Cambia esto para usar 'n'
  numero = original; // Reinicia el número original para verificar
  suma = 0; // Reinicia la suma
  while (numero > 0) {
    int digito = numero % 10;
    suma += BigInt.from(digito).pow(n).toInt(); // Usa n para elevar el dígito
    numero ~/= 10;
  }

  if (suma == original) {
    print("$original es un número Armstrong.");
  } else {
    print("$original no es un número Armstrong.");
  }
}
