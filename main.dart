import 'dart:io';
import 'operaciones.dart';


// Funciones auxiliares para lectura segura
/// Lee un valor decimal desde la consola de forma segura.
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

/// Lee un número entero desde la consola de forma segura.
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

/// Inicia el flujo para calcular distancia (velocidad × tiempo).
void ejecutarMultiplicacion() {
  double velocidad = leerDouble('\n¿Cuál es la velocidad del vehículo? ');
  double tiempo = leerDouble('¿Cuál es el tiempo del recorrido? ');
  double resultado = mult(velocidad, tiempo);
  print('El resultado (velocidad × tiempo) es: $resultado');
}

/// Inicia el flujo para calcular el promedio de tres notas.
void ejecutarPromedio() {
  double n1 = leerDouble('\nIngresa tu primera nota: ');
  double n2 = leerDouble('Ingresa tu segunda nota: ');
  double n3 = leerDouble('Ingresa tu tercera nota: ');
  double promedio = prom(n1, n2, n3);
  print('El promedio de tus notas es: ${promedio.toStringAsFixed(2)}');
}

/// Inicia el flujo para calcular los puntos de un equipo de fútbol.
void ejecutarPuntajeEquipo() {
  int pg = leerInt('\nDigite la cantidad de partidos ganados: ');
  int pe = leerInt('Digite la cantidad de partidos empatados: ');
  int pp = leerInt('Digite la cantidad de partidos perdidos: ');
  int totalPuntos = puntosEquipo(pg, pe, pp);
  print('\nResumen del equipo:');
  print('Ganados:   $pg');
  print('Empatados: $pe');
  print('Perdidos:  $pp');
  print('Puntaje:   $totalPuntos');
}

/// Inicia el flujo para generar la planilla de un empleado.
void ejecutarPlanillaEmpleado() {
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
}

/// Inicia el flujo para calcular la hipotenusa de un triángulo.
void ejecutarHipotenusa() {
  double a = leerDouble('\nDigite la longitud del cateto a: ');
  double b = leerDouble('Digite la longitud del cateto b: ');
  double h = hipotenusa(a, b);
  print('\nResultados del triángulo:');
  print('Cateto a:   $a');
  print('Cateto b:   $b');
  print('Hipotenusa: ${h.toStringAsFixed(2)}');
}

/// Inicia el flujo para convertir grados Celsius a Fahrenheit.
void ejecutarConversionTemperatura() {
  double c = leerDouble('\nDigite la temperatura en °C: ');
  double f = celsiusAFahrenheit(c);
  print('\nConversión de temperatura:');
  print('Celsius:    ${c.toStringAsFixed(1)} °C');
  print('Fahrenheit: ${f.toStringAsFixed(1)} °F');
}

/// Limpia la pantalla de la consola según el sistema operativo.
void limpiarPantalla() {
  if (Platform.isWindows) {
    stdout.write('\x1B[2J\x1B[0f');
  } else {
    stdout.write('\x1B[2J\x1B[3J\x1B[H');
  }
}

/// Pausa la ejecución hasta que el usuario presione una tecla.
void presioneContinuar() {
  stdout.write('\nPresione Enter para continuar...');
  stdin.readLineSync();
}

/// Punto de entrada principal de la aplicación.
void main() {
  bool continuar = true;

  while (continuar) {
    limpiarPantalla();
    print('=== Menú de ejercicios ===');
    print('1. Multiplicación velocidad × tiempo');
    print('2. Promedio de tres notas');
    print('3. Puntaje equipo de fútbol');
    print('4. Planilla de empleado');
    print('5. Hipotenusa de triángulo');
    print('6. Celsius a Fahrenheit');
    print('7. Salir');
    stdout.write('Seleccione una opción (1–7): ');
    String opcion = stdin.readLineSync() ?? '';

    switch (opcion) {
      case '1':
        ejecutarMultiplicacion();
        presioneContinuar();
        break;
      case '2':
        ejecutarPromedio();
        presioneContinuar();
        break;
      case '3':
        ejecutarPuntajeEquipo();
        presioneContinuar();
        break;
      case '4':
        ejecutarPlanillaEmpleado();
        presioneContinuar();
        break;
      case '5':
        ejecutarHipotenusa();
        presioneContinuar();
        break;
      case '6':
        ejecutarConversionTemperatura();
        presioneContinuar();
        break;
      case '7':
        continuar = false;
        print('\n¡Hasta luego!');
        break;
      default:
        print('\nOpción inválida. Intente de nuevo.');
        presioneContinuar();
    }
  }
}
