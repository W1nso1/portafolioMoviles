import 'dart:io';

void main()
{
  List<String> voa = ['volumen', 'area'];
  
  print('===============');
  print('Menu de calculo\nPor favor elija el tipo de calculo a realizar [Volumen o Area]');
  String calculo = stdin.readLineSync()!.trim().toLowerCase(); // CAMBIAAAAAR
  while (!voa.contains(calculo))
  {
    print('Valor erroneo, escribir solo [Volumen o Area]');
    calculo = stdin.readLineSync()!.trim().toLowerCase(); // CAMBIAAAAAR
  }
  switch (calculo)
  {
    case 'area':
      area();
      break;

    case 'volumen':
      volumen();
      break;
  }
}

void area()
{
  print('Por favor elegir la figura a la cual sacar el area [rectangulo, triangulo o circulo]: ');
  List<String> figuras = ['rectangulo', 'triangulo', 'circulo'];
  String figura = stdin.readLineSync()!.trim().toLowerCase(); //CAMBIARRRRRRR
  bool valid = figuras.contains(figura);
  while (!valid)
  {
    print('Figura invalida, por favor seleccione una de la lista [rectangulo, triangulo o circulo]: ');
    figura = stdin.readLineSync()!.trim().toLowerCase(); //CAMBIAAAAARRRRRR
    valid = figuras.contains(figura);
  }
  switch (figura) 
  {
    case 'rectangulo':
      print('Introducir valor del ancho: ');
      double varGen1 = double.parse(stdin.readLineSync()!.trim()); // CAMBIARRRR
      print('Introducir valor del largo: ');
      double varGen2 = double.parse(stdin.readLineSync()!.trim()); // CAMBIARRRR
      double total = varGen1 * varGen2;
      print('El area de la figura es: $total');
      break;

    case 'triangulo':
      print('Introducir valor de la base del triangulo: ');
      double varGen1 = double.parse(stdin.readLineSync()!.trim()); //CAMBIAAAAR
      print('Introducir valor de la altura del triangulo: ');
      double varGen2 = double.parse(stdin.readLineSync()!.trim()); //CAMBIAAAAR
      double total = (varGen1 * varGen2) / 2;
      print('El area de la figura es: $total');
      break;

    case 'circulo':
      print('Introducir valor del radio: ');
      double varGen1 = double.parse(stdin.readLineSync()!.trim()); // CAMBIARRRR
      double total = 3.14 * (varGen1 * varGen1);
      print('El area de la figura es: $total');
      break;
  }
  main();
}


void volumen()
{ 
  print('Por favor elegir la figura a la cual sacar el volumen [cubo, piramide o esfera]: ');
  List<String> figuras = ['cubo', 'piramide', 'esfera'];
  String figura = stdin.readLineSync()!.trim().toLowerCase(); //CAMBIARRRRRRR
  bool valid = figuras.contains(figura);
  while (!valid)
  {
    print('Figura invalida, por favor seleccione una de la lista [cubo, piramide o esfera]: ');
    figura = stdin.readLineSync()!.trim().toLowerCase(); //CAMBIAAAAARRRRRR
    valid = figuras.contains(figura);
  }
  switch (figura) 
  {
    case 'cubo':
      print('Introducir valor de uno de sus lados: ');
      double varGen1 = double.parse(stdin.readLineSync()!.trim()); // CAMBIARRRR
      double total = varGen1 * varGen1 * varGen1;
      print('El volumen de la figura es: $total');
      break;

    case 'piramide':
      print('Introducir valor del ancho de la base de la piramide: ');
      double varGen1 = double.parse(stdin.readLineSync()!.trim()); //CAMBIAAAAR
      print('Introducir valor del largo de la base de la piramide: ');
      double varGen2 = double.parse(stdin.readLineSync()!.trim()); //CAMBIAAAAR
      print('Introducir valor de la altura de la piramide: ');
      double varGen3 = double.parse(stdin.readLineSync()!.trim()); //CAMBIAAAAR
      double total = ((varGen1 * varGen2) * varGen3) / 3;
      print('El volumen de la figura es: $total');
      break;

    case 'esfera':
      print('Introducir valor del radio: ');
      double varGen1 = double.parse(stdin.readLineSync()!.trim()); // CAMBIARRRR
      double total = (4 / 3) * 3.1416 * varGen1 * varGen1 * varGen1;
      print('El volumen de la figura es: $total');
      break;
  }
  main();
}
