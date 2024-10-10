import 'dart:io';

class Vendedor {
  double sueldoBasico = 350.75;
  double totalVendido;

  // Constructor
  Vendedor(this.totalVendido);

  // Método para calcular la comisión
  double calcularComision() {
    return totalVendido * 0.05; // 5% del importe total vendido
  }

  // Método para calcular el sueldo bruto
  double calcularSueldoBruto() {
    return sueldoBasico + calcularComision();
  }

  // Método para calcular el descuento
  double calcularDescuento() {
    return calcularSueldoBruto() * 0.15; // 15% del sueldo bruto
  }

  // Método para calcular el sueldo neto
  double calcularSueldoNeto() {
    return calcularSueldoBruto() - calcularDescuento();
  }

  // Método para imprimir la boleta
  void imprimirBoleta() {
    print('Boleta de Pago del Vendedor');
    print('---------------------------');
    print('Sueldo Básico: S/. $sueldoBasico');
    print('Comisión: S/. ${calcularComision().toStringAsFixed(2)}');
    print('Sueldo Bruto: S/. ${calcularSueldoBruto().toStringAsFixed(2)}');
    print('Descuento (15%): S/. ${calcularDescuento().toStringAsFixed(2)}');
    print('Sueldo Neto: S/. ${calcularSueldoNeto().toStringAsFixed(2)}');
  }
}

void main() {
  // Ejemplo de uso
  print('Ingrese el total vendido en el mes:');
  double totalVendido = double.parse(stdin.readLineSync()!);

  // Crear objeto de la clase Vendedor
  Vendedor vendedor = Vendedor(totalVendido);

  // Imprimir la boleta de pago
  vendedor.imprimirBoleta();
}
