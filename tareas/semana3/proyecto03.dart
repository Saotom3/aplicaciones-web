/*
La empresa “Juanito Import” SAC expondrá sus productos en una feria. La empresa considera 
que el monto total de dinero a invertir estará distribuido de la siguiente manera:
Rubro Porcentaje
Alquiler de espacio en la feria 23%
Publicidad 7%
Transporte 26%
Servicios feriales 12%
Decoración 21%
Gastos varios 11%
Dado el monto total de dinero a invertir, implemente un programa que determine cuánto 
gastará la empresa en cada rubro.
*/
import 'dart:io';  // Importa para permitir entrada del usuario

void main() {
  // Pedir al usuario que ingrese el monto total a invertir
  print('Ingrese el monto total de dinero a invertir:');
  double? montoTotal = double.parse(stdin.readLineSync()!);

  // Calcular el gasto en cada rubro
  double alquiler = montoTotal * 0.23;
  double publicidad = montoTotal * 0.07;
  double transporte = montoTotal * 0.26;
  double servicios = montoTotal * 0.12;
  double decoracion = montoTotal * 0.21;
  double gastosVarios = montoTotal * 0.11;
  
  // Mostrar los resultados
  print('Distribución de gastos para la empresa "Juanito Import":');
  print('Alquiler de espacio en la feria: $alquiler');
  print('Publicidad: $publicidad');
  print('Transporte: $transporte');
  print('Servicios feriales: $servicios');
  print('Decoración: $decoracion');
  print('Gastos varios: $gastosVarios');
}
