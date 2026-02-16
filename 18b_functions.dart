import 'dart:io'; //importa la librería para entrada/salida en consola (leer y escribir datos)

void multiply(int numero){
  for (int c = 0; c < 10; c++) { //bucle para generar la tabla de multiplicar del número ingresado
  int r = 0;
  r = numero * c; //calcula el resultado de multiplicar el número por el contador
  stdout.write('$numero * $c = $r \n'); //muestra el resultado en formato de tabla de multiplicar
  }
}

main() {
  int n = 0;
  stdout.write('Ingrese un número de la tabla de multiplicar: '); //pide ingresar un número
  n = int.parse(stdin.readLineSync()!); //lee el número ingresado y lo convierte a entero
  multiply(n); //llama a la función para mostrar la tabla de multiplicar del número
  
}