/*
Ejercicio 7: Matriz de espiral
Crea un programa que imprima una matriz cuadrada de tamaño n x n en forma de 
espiral. Utiliza bucles anidados para recorrer las posiciones de la matriz 
en el orden adecuado.
*/
import 'dart:io';

void main() {
  stdout.write("Ingresa el tamaño de la matriz (n): ");
  int n = int.parse(stdin.readLineSync()!);
  
  List<List<int>> matriz = List.generate(n, (i) => List.filled(n, 0));
  
  int valor = 1;
  int inicioFila = 0, finFila = n - 1;
  int inicioColumna = 0, finColumna = n - 1;

  while (inicioFila <= finFila && inicioColumna <= finColumna) {
    // Llenar la fila superior
    for (int i = inicioColumna; i <= finColumna; i++) {
      matriz[inicioFila][i] = valor++;
    }
    inicioFila++;

    // Llenar la columna derecha
    for (int i = inicioFila; i <= finFila; i++) {
      matriz[i][finColumna] = valor++;
    }
    finColumna--;

    // Llenar la fila inferior
    if (inicioFila <= finFila) {
      for (int i = finColumna; i >= inicioColumna; i--) {
        matriz[finFila][i] = valor++;
      }
      finFila--;
    }

    // Llenar la columna izquierda
    if (inicioColumna <= finColumna) {
      for (int i = finFila; i >= inicioFila; i--) {
        matriz[i][inicioColumna] = valor++;
      }
      inicioColumna++;
    }
  }

  // Mostrar la matriz
  print("Matriz en forma de espiral:");
  for (var fila in matriz) {
    print(fila);
  }
}
