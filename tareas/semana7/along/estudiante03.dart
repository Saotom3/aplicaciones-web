///Metodo3 ingreso manualmente valores del estudiante///

import 'dart:io';

class Estudiante {
  String codigo;
  String nombre;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombre, this.nota1, this.nota2);

  void mostrarInfo() {
    print('Código: $codigo');
    print('Nombre: $nombre');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }

  static Estudiante ingresarDatos() {
    stdout.write('Ingrese el código del estudiante: ');
    String codigo = stdin.readLineSync()!;

    String nombre = pedirNombre();

    double nota1 = pedirNota('Ingrese nota 1 del estudiante: ');
    double nota2 = pedirNota('Ingrese nota 2 del estudiante: ');

    return Estudiante(codigo, nombre, nota1, nota2);
  }

  static String pedirNombre() {
    stdout.write('Ingrese el nombre del estudiante: ');
    return stdin.readLineSync()!;
  }

  static double pedirNota(String mensaje) {
    stdout.write(mensaje);
    return double.parse(stdin.readLineSync()!);
  }
}

void mostrarListaEstudiantes(List<Estudiante> listaEstudiantes) {
  print('\nLista de Estudiantes:');
  for (var estudiante in listaEstudiantes) {
    estudiante.mostrarInfo();
    print('---');
  }
}

void main() {
  List<Estudiante> listaEstudiantes = [];
  String continuar;

  do {
    Estudiante estudiante = Estudiante.ingresarDatos();
    listaEstudiantes.add(estudiante);

    stdout.write('¿Desea agregar otro estudiante? (s/n): ');
    continuar = stdin.readLineSync()!;
  } while (continuar.toLowerCase() == 's');

  mostrarListaEstudiantes(listaEstudiantes);
}
