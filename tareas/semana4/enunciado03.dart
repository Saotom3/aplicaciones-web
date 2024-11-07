/*
Los cálculos salariales de los vendedores de una empresa se calculan de la 
siguiente manera: 
• Sueldo básico: S/.600 
• Comisión: 7% del importe total vendido si es que el importe total vendido es 
mayor a S/.15000; en caso contrario, 5% del importe total vendido 
• Bonificación: S/.25 por cada hijo si es que el número de hijos es menor a 5; 
en caso contrario, S/.22 por cada hijo 
• Sueldo bruto: La suma del sueldo básico, más la comisión y más la bonificación 
• Descuento: 15% del sueldo bruto si es que el sueldo bruto es mayor que S/.3500; 
en caso contrario, 11% del sueldo bruto 
• Sueldo neto: La resta del sueldo bruto menos el descuento 
Dado el importe total vendido y el número de hijos de un vendedor, diseñe un programa 
que determine el sueldo básico, la comisión, la bonificación, el sueldo bruto, el 
descuento y el sueldo neto.
*/
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
