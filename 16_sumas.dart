import 'dart:io';

void main() {
  double x = 1;
  double y = 0;
  print("Introduzca todos los numeros a sumar, introduzca 0 para detener el programa y realizar la suma. ");
  while (x != 0) {
	  x = double.parse(stdin.readLineSync()!);
    y += x;
  }
  y -= 1;
  print("La suma de todos los digitos es: $y");
}
