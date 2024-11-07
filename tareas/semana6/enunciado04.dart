/*
El sueldo bruto de los empleados de una empresa se calcula sumando el sueldo básico más la
bonificación por hijos.
El sueldo básico se calcula multiplicando las horas trabajadas por la tarifa horaria. La tarifa
horaria depende de la categoría del empleado de acuerdo con la siguiente tabla:
Categoría Tarifa horaria (S/.)
A 45.0
B 37.5
La bonificación por hijos se calcula de acuerdo con la siguiente tabla:
Número de hijos Bonificación
Hasta 3 S/. 40.5 por cada hijo
Más de 3 S/. 35.0 por cada hijo
Por ley, todo empleado está sujeto a un porcentaje de descuento sobre el sueldo bruto de
acuerdo con la siguiente tabla:
Sueldo bruto (S/.) Descuento
≥ 3500 13.5%
< 3500 10.0%
Dadas la categoría y la cantidad de horas trabajadas de un empleado, diseñe un programa que
determine el sueldo básico, el sueldo bruto, el descuento y el sueldo neto que le corresponden.
*/
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
  }
}

void main() {
  // Ejemplo de uso
  print('Ingrese la categoría del empleado (A o B):');
  String categoria = stdin.readLineSync()!.toUpperCase();

  print('Ingrese el número de horas trabajadas:');
  double horasTrabajadas = double.parse(stdin.readLineSync()!);

  print('Ingrese el número de hijos:');
  int numHijos = int.parse(stdin.readLineSync()!);

  // Crear objeto de la clase Empleado
  Empleado empleado = Empleado(categoria, horasTrabajadas, numHijos);

  // Imprimir la boleta del empleado
  empleado.imprimirBoleta();
}
