///Metodo2 ingreso manualmente valores del estudiante///

import 'dart:io';

// Clase Estudiante
class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  // Constructor
  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  // Método para mostrar la información del estudiante
  void mostrarInformacion() {
    print('\n--- Información del Estudiante ---');
    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  // Método para calcular el promedio
  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }
}

void main() {
  print('Ingrese el código del estudiante: ');
  String? codigo = stdin.readLineSync();

  print('Ingrese los nombres del estudiante: ');
  String? nombres = stdin.readLineSync();

  print('Ingrese la primera nota: ');
  String? nota1Input = stdin.readLineSync();
  double nota1 = double.tryParse(nota1Input!) ?? 0.0;

  print('Ingrese la segunda nota: ');
  String? nota2Input = stdin.readLineSync();
  double nota2 = double.tryParse(nota2Input!) ?? 0.0;

  Estudiante estudiante = Estudiante(codigo!, nombres!, nota1, nota2);

  estudiante.mostrarInformacion();
}
