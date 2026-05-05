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

// Funciones auxiliares para lectura segura
double leerDouble(String mensaje) {
  while (true) {
    stdout.write(mensaje);
    String? entrada = stdin.readLineSync();
    if (entrada == null || entrada.isEmpty) {
      print('Por favor, ingrese un valor.');
      continue;
    }
    try {
      return double.parse(entrada);
    } catch (e) {
      print('Error: Debe ingresar un número válido.');
    }
  }
}

int leerInt(String mensaje) {
  while (true) {
    stdout.write(mensaje);
    String? entrada = stdin.readLineSync();
    if (entrada == null || entrada.isEmpty) {
      print('Por favor, ingrese un número entero.');
      continue;
    }
    try {
      return int.parse(entrada);
    } catch (e) {
      print('Error: Debe ingresar un número entero válido.');
    }
  }
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
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        double velocidad = leerDouble('\n¿Cuál es la velocidad del vehículo? ');
        double tiempo = leerDouble('¿Cuál es el tiempo del recorrido? ');
        double resultado1 = mult(velocidad, tiempo);
        print('El resultado (velocidad × tiempo) es: $resultado1');
        break;

      case '2':
        double n1 = leerDouble('\nIngresa tu primera nota: ');
        double n2 = leerDouble('Ingresa tu segunda nota: ');
        double n3 = leerDouble('Ingresa tu tercera nota: ');
        double promedio = prom(n1, n2, n3);
        print('El promedio de tus notas es: ${promedio.toStringAsFixed(2)}');
        break;

      case '3':
        int pg = leerInt('\nDigite la cantidad de partidos ganados: ');
        int pe = leerInt('Digite la cantidad de partidos empatados: ');
        int pp = leerInt('Digite la cantidad de partidos perdidos: ');
        int totalPuntos = puntosEquipo(pg, pe, pp);
        print('\nResumen del equipo:');
        print('Ganados:   $pg');
        print('Empatados: $pe');
        print('Perdidos:  $pp');
        print('Puntaje:   $totalPuntos');
        break;

      case '4':
        stdout.write('\nDigite el nombre del empleado: ');
        String nombre = stdin.readLineSync() ?? 'Empleado';
        int horas = leerInt('Horas laboradas en el mes: ');
        double tarifa = leerDouble('Tarifa por hora: ');
        double total = totalEmpleado(horas, tarifa);
        print('\nPlanilla del empleado:');
        print('Nombre:         $nombre');
        print('Horas:          $horas');
        print('Tarifa por h.:  \$${tarifa.toStringAsFixed(2)}');
        print('Total devengado:\$${total.toStringAsFixed(2)}');
        break;

      case '5':
        double a = leerDouble('\nDigite la longitud del cateto a: ');
        double b = leerDouble('Digite la longitud del cateto b: ');
        double h = hipotenusa(a, b);
        print('\nResultados del triángulo:');
        print('Cateto a:   $a');
        print('Cateto b:   $b');
        print('Hipotenusa: ${h.toStringAsFixed(2)}');
        break;

      case '6':
        double c = leerDouble('\nDigite la temperatura en °C: ');
        double f = celsiusAFahrenheit(c);
        print('\nConversión de temperatura:');
        print('Celsius:    ${c.toStringAsFixed(1)} °C');
        print('Fahrenheit: ${f.toStringAsFixed(1)} °F');
        break;

      case '7':
        continuar = false;
        print('\n¡Hasta luego!');
        break;

      default:
        print('\nOpción inválida. Intente de nuevo.');
    }
  }
}
