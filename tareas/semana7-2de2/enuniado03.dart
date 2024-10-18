import 'dart:io';

class TiendaCamisas {
  double precio;
  int cantidad;

  // Constructor
  TiendaCamisas(this.precio, this.cantidad);

  // Método para calcular el importe de la compra
  double calcularImporteCompra() {
    return precio * cantidad;
  }

  // Método para calcular el primer descuento (7% del importe de la compra)
  double calcularPrimerDescuento() {
    return calcularImporteCompra() * 0.07;
  }

  // Método para calcular el segundo descuento (7% del importe restante)
  double calcularSegundoDescuento() {
    double importeRestante = calcularImporteCompra() - calcularPrimerDescuento();
    return importeRestante * 0.07;
  }

  // Método para calcular el descuento total
  double calcularDescuentoTotal() {
    return calcularPrimerDescuento() + calcularSegundoDescuento();
  }

  // Método para calcular el importe final a pagar
  double calcularImportePagar() {
    return calcularImporteCompra() - calcularDescuentoTotal();
  }

  // Método para imprimir el detalle de la compra
  void imprimirDetalleCompra() {
    print('Detalle de la Compra de Camisas');
    print('------------------------------');
    print('Importe de la compra: S/. ${calcularImporteCompra().toStringAsFixed(2)}');
    print('Primer descuento (7%): S/. ${calcularPrimerDescuento().toStringAsFixed(2)}');
    print('Segundo descuento (7%): S/. ${calcularSegundoDescuento().toStringAsFixed(2)}');
    print('Descuento total: S/. ${calcularDescuentoTotal().toStringAsFixed(2)}');
    print('Importe a pagar: S/. ${calcularImportePagar().toStringAsFixed(2)}');
    print('------------------------------');
  }
}

void main() {
  List<TiendaCamisas> compras = [];
  String continuar;

  do {
    // Solicitar el precio de la camisa
    print('Ingrese el precio de la camisa:');
    double precio = double.parse(stdin.readLineSync()!);

    // Solicitar la cantidad de camisas
    print('Ingrese la cantidad de camisas:');
    int cantidad = int.parse(stdin.readLineSync()!);

    // Crear objeto de la clase TiendaCamisas y agregarlo a la lista
    TiendaCamisas tienda = TiendaCamisas(precio, cantidad);
    compras.add(tienda);

    // Preguntar si se desea agregar otra compra
    print('¿Desea agregar otra compra? (s/n)');
    continuar = stdin.readLineSync()!;
  } while (continuar.toLowerCase() == 's');

  // Imprimir el detalle de la compra para cada compra almacenada
  for (var compra in compras) {
    compra.imprimirDetalleCompra();
  }
}
