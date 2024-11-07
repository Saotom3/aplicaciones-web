/*
Una dulcería vende chocolates a los precios dados en la siguiente tabla:
Tipo de chocolate Precio unitario
Primor S/. 8.5
Dulzura S/. 10.0
Tentación S/. 7.0
Explosión S/. 12.5
Como oferta, la tienda aplica un porcentaje de descuento sobre el importe de la compra,
basándose en la cantidad de chocolates adquiridos, de acuerdo con la siguiente tabla:
Cantidad de chocolates Descuento
< 5 4.0%
≥ 5 y < 10 6.5%
≥ 10 y < 15 9.0%
≥ 15 11.5%
Adicionalmente, si el importe a pagar es no menor de S/. 250, la tienda obsequia 3 caramelos por
cada chocolate; en caso contrario, obsequia 2 caramelos por cada chocolate.
Dado el tipo de chocolate y la cantidad de unidades adquiridas, diseñe un programa que
determine el importe de la compra, el importe del descuento, el importe a pagar y la cantidad de
caramelos de obsequio.
*/
import 'dart:io';

double obtenerPrecioChocolate(String tipoChocolate) {
  Set<String> tiposChocolatesValidos = {'Primor', 'Dulzura', 'Tentación', 'Explosión'};

  if (!tiposChocolatesValidos.contains(tipoChocolate)) {
    return 0;
  }

  Map<String, double> precios = {
    'Primor': 8.5,
    'Dulzura': 10.0,
    'Tentación': 7.0,
    'Explosión': 12.5,
  };

  return precios[tipoChocolate] ?? 0;
}

double obtenerDescuento(int cantidad) {
  if (cantidad < 5) {
    return 0.04;
  } else if (cantidad < 10) {
    return 0.065;
  } else if (cantidad < 15) {
    return 0.09;
  } else {
    return 0.115;
  }
}

int calcularCaramelos(int cantidadChocolates, double importeAPagar) {
  if (importeAPagar >= 250) {
    return cantidadChocolates * 3;
  } else {
    return cantidadChocolates * 2;
  }
}

void main() {
  print(
      "Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión):");
  String tipoChocolate = stdin.readLineSync()!;

  print("Ingrese la cantidad de chocolates:");
  int cantidadChocolates = int.parse(stdin.readLineSync()!);

  double precioUnitario = obtenerPrecioChocolate(tipoChocolate);

  if (precioUnitario == 0) {
    print("Tipo de chocolate inválido.");
    return;
  }

  double importeCompra = precioUnitario * cantidadChocolates;

  double descuento = obtenerDescuento(cantidadChocolates);
  double importeDescuento = importeCompra * descuento;
  double importeAPagar = importeCompra - importeDescuento;
  int caramelosObsequio = calcularCaramelos(cantidadChocolates, importeAPagar);

  print("Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}");
  print("Importe del descuento: S/. ${importeDescuento.toStringAsFixed(2)}");
  print("Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}");
  print("Cantidad de caramelos de obsequio: $caramelosObsequio");
}