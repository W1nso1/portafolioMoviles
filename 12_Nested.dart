import 'dart:io';

void main() {
  int aux;
  int temp;
  stdout.write('Ingresa el primer número (w): ');
  int? w = int.parse(stdin.readLineSync()!);
  stdout.write('Ingresa el segundo número (x): ');
  int? x = int.parse(stdin.readLineSync()!);
  stdout.write('Ingresa el tercer número (y): ');
  int? y = int.parse(stdin.readLineSync()!);
  stdout.write('Ingresa el último número (z): ');
  int? z = int.parse(stdin.readLineSync()!);

  if (w < x) {
    aux = w;
    w = x;
    x = aux;
  }
  if (w < y) {
    aux = w;
    w = y;
    y = aux;
  }
  if (w < z) {
    aux = w;
    w = z;
    z = aux;
  }
  if (x < y) {
    aux = x;
    x = y;
    y = aux;
    if (x < z) {
      aux = x;
      x = z;
      z = aux;
    }
  }
  if (y < z) {
    aux = y;
    y = z;
    z = aux;
  }

  if (w < x) {
    temp = w; w = x; x = temp;
    }
  if (w < y) {
    temp = w; w = y; y = temp;
    }
  if (w < z) {
    temp = w; w = z; z = temp;
    }
  if (x < y) {
    temp = x; x = y; y = temp;
    }
  if (x < z) {
    temp = x; x = z; z = temp;
    }
  if (y < z) {
    temp = y; y = z; z = temp;
    }
  
  print('Ordenados de mayor a menor: $w, $x, $y, $z');
}