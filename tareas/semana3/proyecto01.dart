import 'dart:io';  // Importa para permitir entrada del usuario
import 'dart:math';  // Importa para usar el valor de pi y otras funciones matemáticas

void main() {
  // Pedir al usuario que ingrese el radio
  print('Ingrese el radio del cilindro:');
  double? radio = double.parse(stdin.readLineSync()!);  // Convierte la entrada a double

  // Pedir al usuario que ingrese la altura
  print('Ingrese la altura del cilindro:');
  double? altura = double.parse(stdin.readLineSync()!);

  // Calcular el área total
  double areaTotal = 2 * pi * radio * (radio + altura);
  
  // Calcular el volumen
  double volumen = pi * pow(radio, 2) * altura;

  // Mostrar los resultados
  print('El área total del cilindro es: $areaTotal');
  print('El volumen del cilindro es: $volumen');
}
