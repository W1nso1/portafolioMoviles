import 'dart:io';

void main()
{
  // Declaracion de variables
  double test = 1;
  
  // Bucle de validacion
  while (test != 0)
  {
    // Mete variable test junto con la comprobacion
    print('Introduzca el valor del que desea mostrar su tabla de multiplicar (hasta el 50): ');
    test = double.parse(stdin.readLineSync()!);
    if (test == 0) break;
    // Realiza y tira output de la operacion
    for (var i = 1; i <= 50; i++)
    {
      double result = i * test;
      print('$test x $i = $result');
    }
  }
  // Mensaje de fin de programa
  print('Programa finalizado');
}