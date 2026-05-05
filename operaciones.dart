import 'dart:math';

/// Multiplica la velocidad por el tiempo para obtener la distancia.
double mult(double valorVelocidad, double valorTiempo) {
  return valorVelocidad * valorTiempo;
}

/// Calcula el promedio de tres notas.
double prom(double nota1, double nota2, double nota3) {
  return (nota1 + nota2 + nota3) / 3;
}

/// Calcula los puntos totales de un equipo (Ganados: 3, Empatados: 1, Perdidos: 0).
int puntosEquipo(int pg, int pe, int pp) {
  return pg * 3 + pe * 1;
}

/// Calcula el total devengado por un empleado.
double totalEmpleado(int horas, double tarifa) {
  return horas * tarifa;
}

/// Calcula la hipotenusa de un triángulo rectángulo dados sus catetos.
double hipotenusa(double a, double b) {
  return sqrt(a * a + b * b);
}

/// Convierte grados Celsius a Fahrenheit.
double celsiusAFahrenheit(double c) {
  return c * 1.8 + 32;
}
