import 'dart:io';

void main() 
{
  // Variables a usar
  bool valid = false;
  String test = '';
  // Listas necesarias
  List<String> usaSys = ['A+', 'A', 'B', 'C', 'D', 'F'];
  List<String> mexSys = ['10', '9', '8', '7', '6', '5'];
  // Mensaje de recibimiento
  print('Por favor, introduzca la calificacion a convertir del sistema Estadounidense al sistema Mexicano: ');
  
  // Bucle de validacion
  while (!valid)
  {
    test = stdin.readLineSync()!.trim().toUpperCase();
    // El .contains arroja false (de ahi que use !valid) si test no esta en usaSys
    valid = usaSys.contains(test);
    // Se usa if para evitar que mande errores 
    if (!valid)
    {
      // Mensajes de error
      print('El valor introducido no corresponde con el sistema Estadounidense.');
      print('Intente de nuevo');
    }
  }
  
  // Arroja las posiciones de la variable test
  int indice = usaSys.indexOf(test);
  print('El resultado de la conversion de ${usaSys[indice]} al sistema Mexicano es: ${mexSys[indice]}');
}