main(){
  var a = 10;
  final double b = 10;
  const double c = 10;

  print(a);
  print(b);
  print(c);

  //final persoasFinal = ['Abdiel', 'Win'];
  //const personasConst = ['AbdielConst', 'Win'];
  final List<String> personasFinal = ['Abdiel', 'Win'];
  List<String> personasConst = const['AbdielConst', 'WinConst'];

 //personasfinal = ['x', 'y'];
 //personasConst = ['x', 'y']; 

  personasFinal.add('Win');
  personasConst.add('WinConst');

  print(personasFinal);
  print(personasConst);
}

