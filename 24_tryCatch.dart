import 'dart:io';

int factorial(int num) {
  if (num <= 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}

void main() {
  int num = 0;

  stdout.writeln('Ingresa el número para calcular su factorial:');

  try {
    num = int.parse(stdin.readLineSync()!);

    if (num < 0) {
      throw FormatException("No se permiten números negativos.");
    }

    int resultado = factorial(num);

    stdout.writeln('El factorial de $num es: $resultado');
  } catch (e) {
    stdout.writeln("Input no válido. $e");
  }
}
