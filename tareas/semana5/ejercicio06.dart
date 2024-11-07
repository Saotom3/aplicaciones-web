/*
Ejercicio 6: Número perfecto
Implementa un programa que encuentre y muestre todos los números perfectos 
entre 1y 10,000. Un número perfecto es aquel que es igual a la suma de sus
divisores propios. Usa un bucle para iterar y otro para encontrar los divisores 
de cada número.
*/
void main() {
  print("Números perfectos entre 1 y 10,000:");

  for (int num = 1; num <= 10000; num++) {
    int sumaDivisores = 0;

    // Encontrar los divisores propios
    for (int i = 1; i < num; i++) {
      if (num % i == 0) {
        sumaDivisores += i;
      }
    }

    // Verificar si es un número perfecto
    if (sumaDivisores == num) {
      print(num);
    }
  }
}
