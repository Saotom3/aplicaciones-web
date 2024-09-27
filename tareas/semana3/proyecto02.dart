import 'dart:io'; // Importa para permitir entrada del usuario

void main() {
  // Cantidad total de dinero a repartir
  double totalDinero = 10000;  // Puedes cambiar el valor
  
  // Cálculo del dinero para Josué y Daniel
  double dineroJosue = totalDinero * 0.27;
  double dineroDaniel = totalDinero * 0.25;
  
  // Cálculo del dinero para Tamar y Caleb
  double dineroTamar = dineroJosue * 0.85;
  double dineroCaleb = (dineroJosue + dineroDaniel) * 0.23;
  
  // Dinero restante para David
  double dineroDavid = totalDinero - (dineroJosue + dineroDaniel + dineroTamar + dineroCaleb);
  
  // Mostrar menú para que el usuario elija un hijo
  print('Elige el hijo para ver cuánto recibe:');
  print('1. Tamar');
  print('2. Josué');
  print('3. Caleb');
  print('4. Daniel');
  print('5. David');
  
  // Leer la opción del usuario
  String? opcion = stdin.readLineSync();
  
  switch (opcion) {
    case '1':
      print('Tamar recibirá: $dineroTamar');
      break;
    case '2':
      print('Josué recibirá: $dineroJosue');
      break;
    case '3':
      print('Caleb recibirá: $dineroCaleb');
      break;
    case '4':
      print('Daniel recibirá: $dineroDaniel');
      break;
    case '5':
      print('David recibirá: $dineroDavid');
      break;
    default:
      print('Opción no válida.');
  }
}
