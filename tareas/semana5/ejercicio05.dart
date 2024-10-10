import 'dart:io';

void main() {
  stdout.write("Ingresa el tamaño de la matriz (N): ");
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz1 = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> matriz2 = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> suma = List.generate(n, (_) => List.filled(n, 0));

  // Llenar la primera matriz
  print("Ingresa los elementos de la primera matriz:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write("Elemento [$i][$j]: ");
      matriz1[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Llenar la segunda matriz
  print("Ingresa los elementos de la segunda matriz:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write("Elemento [$i][$j]: ");
      matriz2[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Calcular la suma de las matrices
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      suma[i][j] = matriz1[i][j] + matriz2[i][j];
    }
  }

  // Mostrar la matriz resultante
  print("La suma de las matrices es:");
  for (var fila in suma) {
    print(fila);
  }
}
