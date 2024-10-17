///Metodo1 mostrar valores del Estudiante///

class Estudiante {
  String codigo;
  String nombre;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombre, this.nota1, this.nota2);

  void mostrarInfo() {
    print('Código: $codigo');
    print('Nombre: $nombre'); // Cambié 'Nombres' a 'Nombre'
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }
}

void main() {
  List<Estudiante> listaEstudiantes = [];

  // Agregar estudiantes a la lista
  listaEstudiantes.add(Estudiante('001', 'Juan Pérez', 15.5, 17.8));
  listaEstudiantes.add(Estudiante('002', 'Ana Gómez', 18.2, 19.5));

  // Mostrar información de cada estudiante
  for (var estudiante in listaEstudiantes) {
    estudiante.mostrarInfo(); // Cambié a mostrarInfo()
    print('---');
  }
}
