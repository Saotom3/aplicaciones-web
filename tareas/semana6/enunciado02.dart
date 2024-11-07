/*
Una empresa expondrá sus productos en una feria. La empresa considera que el monto 
total de dinero a invertir estará distribuido de la siguiente manera:
Rubro Porcentaje
Alquiler de espacio en la feria 23%
Publicidad 7%
Transporte 26%
Servicios feriales 12%
Decoración 21%
Gastos varios 11%
Dado el monto total de dinero a invertir, diseñe un programa que determine cuánto 
gastará la empresa en cada rubro.
*/
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
  }
}

void main() {
  // Ejemplo de uso
  print('Ingrese el monto total de dinero a invertir en la feria:');
  double montoTotal = double.parse(stdin.readLineSync()!);

  // Crear objeto de la clase Feria
  Feria feria = Feria(montoTotal);

  // Imprimir los gastos detallados
  feria.imprimirGastos();
}
