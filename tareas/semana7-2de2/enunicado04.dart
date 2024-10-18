import 'dart:io';

class Empleado {
  String categoria;
  double horasTrabajadas;
  int numHijos;

  // Constructor
  Empleado(this.categoria, this.horasTrabajadas, this.numHijos);

  // Método para obtener la tarifa horaria según la categoría
  double obtenerTarifaHoraria() {
    if (categoria == 'A') {
      return 45.0;
    } else if (categoria == 'B') {
      return 37.5;
    } else {
      throw ArgumentError('Categoría inválida');
    }
  }

  // Método para calcular el sueldo básico
  double calcularSueldoBasico() {
    return obtenerTarifaHoraria() * horasTrabajadas;
  }

  // Método para calcular la bonificación por hijos
  double calcularBonificacion() {
    if (numHijos <= 3) {
      return numHijos * 40.5;
    } else {
      return numHijos * 35.0;
    }
  }

  // Método para calcular el sueldo bruto
  double calcularSueldoBruto() {
    return calcularSueldoBasico() + calcularBonificacion();
  }

  // Método para calcular el descuento según el sueldo bruto
  double calcularDescuento() {
    double sueldoBruto = calcularSueldoBruto();
    if (sueldoBruto >= 3500) {
      return sueldoBruto * 0.135;
    } else {
      return sueldoBruto * 0.10;
    }
  }

  // Método para calcular el sueldo neto
  double calcularSueldoNeto() {
    return calcularSueldoBruto() - calcularDescuento();
  }

  // Método para imprimir el detalle de la boleta
  void imprimirBoleta() {
    print('Boleta del Empleado');
    print('-------------------');
    print('Categoría: $categoria');
    print('Horas trabajadas: $horasTrabajadas');
    print('Número de hijos: $numHijos');
    print('Sueldo básico: S/. ${calcularSueldoBasico().toStringAsFixed(2)}');
    print('Bonificación: S/. ${calcularBonificacion().toStringAsFixed(2)}');
    print('Sueldo bruto: S/. ${calcularSueldoBruto().toStringAsFixed(2)}');
    print('Descuento: S/. ${calcularDescuento().toStringAsFixed(2)}');
    print('Sueldo neto: S/. ${calcularSueldoNeto().toStringAsFixed(2)}');
    print('-------------------');
  }
}

void main() {
  List<Empleado> empleados = [];
  String continuar;

  do {
    // Solicitar la categoría del empleado
    print('Ingrese la categoría del empleado (A o B):');
    String categoria = stdin.readLineSync()!.toUpperCase();

    // Solicitar el número de horas trabajadas
    print('Ingrese el número de horas trabajadas:');
    double horasTrabajadas = double.parse(stdin.readLineSync()!);

    // Solicitar el número de hijos
    print('Ingrese el número de hijos:');
    int numHijos = int.parse(stdin.readLineSync()!);

    // Crear objeto de la clase Empleado y agregarlo a la lista
    Empleado empleado = Empleado(categoria, horasTrabajadas, numHijos);
    empleados.add(empleado);

    // Preguntar si se desea agregar otro empleado
    print('¿Desea agregar otro empleado? (s/n)');
    continuar = stdin.readLineSync()!;
  } while (continuar.toLowerCase() == 's');

  // Imprimir la boleta para cada empleado almacenado
  for (var empleado in empleados) {
    empleado.imprimirBoleta();
  }
}
