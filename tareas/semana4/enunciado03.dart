import 'dart:io';

void main() {
  // Definir el sueldo básico
  const double sueldoBasico = 600;

  // Solicitar el importe total vendido
  print('Ingrese el importe total vendido:');
  double totalVendido = double.parse(stdin.readLineSync()!);

  // Solicitar el número de hijos
  print('Ingrese el número de hijos:');
  int numeroHijos = int.parse(stdin.readLineSync()!);

  // Calcular la comisión
  double comision = calcularComision(totalVendido);

  // Calcular la bonificación
  double bonificacion = calcularBonificacion(numeroHijos);

  // Calcular el sueldo bruto
  double sueldoBruto = sueldoBasico + comision + bonificacion;

  // Calcular el descuento
  double descuento = calcularDescuento(sueldoBruto);

  // Calcular el sueldo neto
  double sueldoNeto = sueldoBruto - descuento;

  // Mostrar resultados
  print('Sueldo básico: S/. $sueldoBasico');
  print('Comisión: S/. ${comision.toStringAsFixed(2)}');
  print('Bonificación: S/. ${bonificacion.toStringAsFixed(2)}');
  print('Sueldo bruto: S/. ${sueldoBruto.toStringAsFixed(2)}');
  print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
  print('Sueldo neto: S/. ${sueldoNeto.toStringAsFixed(2)}');
}

double calcularComision(double totalVendido) {
  if (totalVendido > 15000) {
    return totalVendido * 0.07; // 7% si el total vendido es mayor a S/. 15000
  } else {
    return totalVendido * 0.05; // 5% si el total vendido es menor o igual a S/. 15000
  }
}

double calcularBonificacion(int numeroHijos) {
  if (numeroHijos < 5) {
    return numeroHijos * 25; // S/. 25 por cada hijo si tiene menos de 5 hijos
  } else {
    return numeroHijos * 22; // S/. 22 por cada hijo si tiene 5 o más hijos
  }
}

double calcularDescuento(double sueldoBruto) {
  if (sueldoBruto > 3500) {
    return sueldoBruto * 0.15; // 15% si el sueldo bruto es mayor que S/. 3500
  } else {
    return sueldoBruto * 0.11; // 11% si el sueldo bruto es menor o igual a S/. 3500
  }
}
