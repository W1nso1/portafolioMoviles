import 'dart:io';

main ()  {
  int r = 0;
  for (int j = 0; j < 10; j++) {
    if (j == 2) {
      /*break; // Si j es igual a 2, se sale del bucle y no se ejecuta el código siguiente*/
    }
    stdout.writeln('El valor de J es: $j');
    for (int i = 0; i < 10; i++) {
      r = i % 2;
      if (r == 1) {
          //continue; // Si el número es impar, se salta el resto del código en este ciclo y pasa al siguiente número
          //break outterCycle; // Si el número es impar, se sale del bucle y no se ejecuta el código siguiente
      }
      stdout.writeln('El valor de I es: $i'); // Si el número es par, se muestra su valor
    }
  }
}