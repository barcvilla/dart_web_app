library airport;
// Dart permite asignar a un biblioteca importada con su propio nombre identificador, esto nos permite evitar namespace collision
// import '../lib/field.dart' as theField
import '../lib/field.dart';

main()
{
  print("Welcome to the City Airport");
  gotoField(); // funcion miembro de la biblioteca field expuesta en import field.dart

  Hangar aHangar = new Hangar(); // clase Hangar, miembro de la biblioteca field
  Toolbox portBox = new Toolbox(); // clase Toolbox es miembro de la biblioteca field
}