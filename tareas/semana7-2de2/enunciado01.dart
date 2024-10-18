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
    print('---------------------------');
  }
}

void main() {
  List<Vendedor> vendedores = [];
  String continuar;

  do {
    // Solicitar el total vendido en el mes
    print('Ingrese el total vendido en el mes:');
    double totalVendido = double.parse(stdin.readLineSync()!);

    // Crear objeto de la clase Vendedor y agregarlo a la lista
    Vendedor vendedor = Vendedor(totalVendido);
    vendedores.add(vendedor);

    // Preguntar si se desea agregar otro vendedor
    print('¿Desea agregar otro vendedor? (s/n)');
    continuar = stdin.readLineSync()!;
  } while (continuar.toLowerCase() == 's');

  // Imprimir la boleta de pago para cada vendedor
  for (var vendedor in vendedores) {
    vendedor.imprimirBoleta();
  }
}
