import 'dart:io';
import 'dart:math';

// Funciones de operación
double mult(double valorVelocidad, double valorTiempo) {
  return valorVelocidad * valorTiempo;
}

double prom(double nota1, double nota2, double nota3) {
  return (nota1 + nota2 + nota3) / 3;
}

int puntosEquipo(int pg, int pe, int pp) {
  return pg * 3 + pe * 1 + pp * 0;
}

double totalEmpleado(int horas, double tarifa) {
  return horas * tarifa;
}

double hipotenusa(double a, double b) {
  return sqrt(a * a + b * b);
}

double celsiusAFahrenheit(double c) {
  return c * 1.8 + 32;
}

void main() {
  bool continuar = true;

  while (continuar) {
    // Mostrar menú
    print('\n=== Menú de ejercicios ===');
    print('1. Multiplicación velocidad × tiempo');
    print('2. Promedio de tres notas');
    print('3. Puntaje equipo de fútbol');
    print('4. Planilla de empleado');
    print('5. Hipotenusa de triángulo');
    print('6. Celsius a Fahrenheit');
    print('7. Salir');
    stdout.write('Seleccione una opción (1–7): ');
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        // Punto 1 usando función mult
        stdout.write('\n¿Cuál es la velocidad del vehículo? ');
        double velocidad = double.parse(stdin.readLineSync()!);
        stdout.write('¿Cuál es el tiempo del recorrido? ');
        double tiempo = double.parse(stdin.readLineSync()!);
        double resultado1 = mult(velocidad, tiempo);
        print('El resultado (velocidad × tiempo) es: $resultado1');
        break;

      case '2':
        // Punto 2 usando función prom
        stdout.write('\nIngresa tu primera nota: ');
        double n1 = double.parse(stdin.readLineSync()!);
        stdout.write('Ingresa tu segunda nota: ');
        double n2 = double.parse(stdin.readLineSync()!);
        stdout.write('Ingresa tu tercera nota: ');
        double n3 = double.parse(stdin.readLineSync()!);
        double promedio = prom(n1, n2, n3);
        print('El promedio de tus notas es: ${promedio.toStringAsFixed(2)}');
        break;

      case '3':
        // Punto 3 usando función puntosEquipo
        stdout.write('\nDigite la cantidad de partidos ganados: ');
        int pg = int.parse(stdin.readLineSync()!);
        stdout.write('Digite la cantidad de partidos empatados: ');
        int pe = int.parse(stdin.readLineSync()!);
        stdout.write('Digite la cantidad de partidos perdidos: ');
        int pp = int.parse(stdin.readLineSync()!);
        int totalPuntos = puntosEquipo(pg, pe, pp);
        print('\nResumen del equipo:');
        print('Ganados:   $pg');
        print('Empatados: $pe');
        print('Perdidos:  $pp');
        print('Puntaje:   $totalPuntos');
        break;

      case '4':
        // Punto 4 usando función totalEmpleado
        stdout.write('\nDigite el nombre del empleado: ');
        String nombre = stdin.readLineSync()!;
        stdout.write('Horas laboradas en el mes: ');
        int horas = int.parse(stdin.readLineSync()!);
        stdout.write('Tarifa por hora: ');
        double tarifa = double.parse(stdin.readLineSync()!);
        double total = totalEmpleado(horas, tarifa);
        print('\nPlanilla del empleado:');
        print('Nombre:         $nombre');
        print('Horas:          $horas');
        print('Tarifa por h.:  \$${tarifa.toStringAsFixed(2)}');
        print('Total devengado:\$${total.toStringAsFixed(2)}');
        break;

      case '5':
        // Punto 5 usando función hipotenusa
        stdout.write('\nDigite la longitud del cateto a: ');
        double a = double.parse(stdin.readLineSync()!);
        stdout.write('Digite la longitud del cateto b: ');
        double b = double.parse(stdin.readLineSync()!);
        double h = hipotenusa(a, b);
        print('\nResultados del triángulo:');
        print('Cateto a:   $a');
        print('Cateto b:   $b');
        print('Hipotenusa: ${h.toStringAsFixed(2)}');
        break;

      case '6':
        // Punto 6 usando función celsiusAFahrenheit
        stdout.write('\nDigite la temperatura en °C: ');
        double c = double.parse(stdin.readLineSync()!);
        double f = celsiusAFahrenheit(c);
        print('\nConversión de temperatura:');
        print('Celsius:    ${c.toStringAsFixed(1)} °C');
        print('Fahrenheit: ${f.toStringAsFixed(1)} °F');
        break;

      case '7':
        // Salir
        continuar = false;
        print('\n¡Hasta luego!');
        break;

      default:
        print('\nOpción inválida. Intente de nuevo.');
    }
  }
}
