/*
Una tienda ha puesto en oferta la venta de camisas ofreciendo un descuento, por temporada 
de verano, denominado 7% + 7%. Los cálculos se efectúan de la siguiente manera:
• El importe de la compra es igual al producto del precio de la camisa por la cantidad
de unidades adquiridas.
• El importe del primer descuento es igual al 7% del importe de la compra.
• El importe del segundo descuento es igual al 7% de lo que queda de restar el importe
de la compra menos el importe del primer descuento.
• El importe del descuento total es igual a la suma de los dos descuentos anteriores.
• El importe a pagar es igual al importe de la compra menos el importe del descuento
total.
Dado el precio del producto y la cantidad de unidades adquiridas, diseñe un programa que
determine el importe de la compra, el importe del primer descuento, el importe del segundo
descuento, el importe del descuento total y el importe a pagar.
*/
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
  }
}

void main() {
  // Ejemplo de uso
  print('Ingrese el precio de la camisa:');
  double precio = double.parse(stdin.readLineSync()!);

  print('Ingrese la cantidad de camisas:');
  int cantidad = int.parse(stdin.readLineSync()!);

  // Crear objeto de la clase TiendaCamisas
  TiendaCamisas tienda = TiendaCamisas(precio, cantidad);

  // Imprimir el detalle de la compra
  tienda.imprimirDetalleCompra();
}
