import 'dart:io';

class Feria {
  double montoTotal;

  // Constructor
  Feria(this.montoTotal);

  // Método para calcular el gasto en cada rubro
  double calcularGasto(double porcentaje) {
    return montoTotal * (porcentaje / 100);
  }

  // Método para imprimir los gastos detallados
  void imprimirGastos() {
    print('Gastos de la Empresa en la Feria');
    print('-------------------------------');
    print('Alquiler de espacio en la feria: S/. ${calcularGasto(23).toStringAsFixed(2)}');
    print('Publicidad: S/. ${calcularGasto(7).toStringAsFixed(2)}');
    print('Transporte: S/. ${calcularGasto(26).toStringAsFixed(2)}');
    print('Servicios feriales: S/. ${calcularGasto(12).toStringAsFixed(2)}');
    print('Decoración: S/. ${calcularGasto(21).toStringAsFixed(2)}');
    print('Gastos varios: S/. ${calcularGasto(11).toStringAsFixed(2)}');
    print('-------------------------------');
  }
}

void main() {
  List<Feria> ferias = [];
  String continuar;

  do {
    // Solicitar el monto total de dinero a invertir en la feria
    print('Ingrese el monto total de dinero a invertir en la feria:');
    double montoTotal = double.parse(stdin.readLineSync()!);

    // Crear objeto de la clase Feria y agregarlo a la lista
    Feria feria = Feria(montoTotal);
    ferias.add(feria);

    // Preguntar si se desea agregar otra feria
    print('¿Desea agregar otra feria? (s/n)');
    continuar = stdin.readLineSync()!;
  } while (continuar.toLowerCase() == 's');

  // Imprimir los gastos detallados para cada feria
  for (var feria in ferias) {
    feria.imprimirGastos();
  }
}
