import 'dart:io';

void div(double n)
{
  double temp = 0;
  outDiv:
  for (double i = 2; i < n ; i++)
  {
    temp = n % i;
    if (temp == 0)
    {
      stdout.write("El número es primo.");
      break outDiv;
    }
  }
  if (temp != 0)
  {
    stdout.write("El número no es primo");
  }
}

main()
{
  double x = 0;
  while (x < 2)
  {
    stdout.write("Introducir el número entero a resolver si es primo o no (Debe ser 2 o mayor): ");
    x = double.parse(stdin.readLineSync()!);
  }
  div(x);
}
