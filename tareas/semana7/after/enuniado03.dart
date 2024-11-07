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

// Función para obtener el precio del chocolate según el tipo.
double obtenerPrecioChocolate(String tipoChocolate) {
  // Definir un conjunto de tipos válidos.
  Set<String> tiposChocolatesValidos = {'Primor', 'Dulzura', 'Tentación', 'Explosión'};

  // Verificar si el tipo de chocolate es válido.
  if (!tiposChocolatesValidos.contains(tipoChocolate)) {
    return 0;  // Si no es válido, retornar 0 como error.
  }

  // Definir un mapa con los precios de los chocolates.
  Map<String, double> precios = {
    'Primor': 8.5,
    'Dulzura': 10.0,
    'Tentación': 7.0,
    'Explosión': 12.5,
  };

  // Retornar el precio del tipo de chocolate.
  return precios[tipoChocolate] ?? 0;
}

// Función para obtener el descuento según la cantidad de chocolates.
double obtenerDescuento(int cantidad) {
  if (cantidad < 5) {
    return 0.04;  // 4% de descuento.
  } else if (cantidad < 10) {
    return 0.065;  // 6.5% de descuento.
  } else if (cantidad < 15) {
    return 0.09;  // 9% de descuento.
  } else {
    return 0.115;  // 11.5% de descuento.
  }
}

// Función para calcular la cantidad de caramelos obsequiados.
int calcularCaramelos(int cantidadChocolates, double importeAPagar) {
  // Si el importe a pagar es mayor o igual a 250, se obsequian 3 caramelos por chocolate.
  if (importeAPagar >= 250) {
    return cantidadChocolates * 3;
  } else {
    // En otro caso, se obsequian 2 caramelos por chocolate.
    return cantidadChocolates * 2;
  }
}

void main() {
  // Solicitar el tipo de chocolate.
  print("Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión):");
  String tipoChocolate = stdin.readLineSync()!;

  // Solicitar la cantidad de chocolates.
  print("Ingrese la cantidad de chocolates:");
  int cantidadChocolates = int.parse(stdin.readLineSync()!);

  // Obtener el precio del chocolate según el tipo.
  double precioUnitario = obtenerPrecioChocolate(tipoChocolate);

  // Si el precio es 0, el tipo de chocolate no es válido.
  if (precioUnitario == 0) {
    print("Tipo de chocolate inválido.");
    return;
  }

  // Calcular el importe total de la compra.
  double importeCompra = precioUnitario * cantidadChocolates;

  // Calcular el descuento según la cantidad de chocolates.
  double descuento = obtenerDescuento(cantidadChocolates);
  double importeDescuento = importeCompra * descuento;

  // Calcular el importe a pagar después de aplicar el descuento.
  double importeAPagar = importeCompra - importeDescuento;

  // Calcular la cantidad de caramelos de obsequio.
  int caramelosObsequio = calcularCaramelos(cantidadChocolates, importeAPagar);

  // Imprimir los resultados.
  print("Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}");
  print("Importe del descuento: S/. ${importeDescuento.toStringAsFixed(2)}");
  print("Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}");
  print("Cantidad de caramelos de obsequio: $caramelosObsequio");
}
