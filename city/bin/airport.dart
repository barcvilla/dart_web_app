library airport;
// Dart permite asignar a un biblioteca importada con su propio nombre identificador, esto nos permite evitar namespace collision
// import '../lib/field.dart' as theField
import '../lib/field.dart';

main()
{
  print("Welcome to the City Airport");
  // funcion miembro de la biblioteca field expuesta en import field.dart
  gotoField();
  // miembro de cargo.dart - expuesto por import library field.
  gotoBaggageWindow();
  // _grabBags() un miembro privado de la bibliote field, no disponible para airport.dart

  // miembro de cargo.dart - expuesto via la biblioteca field
  var bagman = new Baggage();
  // Baggage accede al miembro _passcode definido en field.dart.
  bagman.tryGrabBag("dunno");
  // Baggage accede  al metodo privado _grabBags() definido en cargo.dart
  bagman.tryGrabBag("007");

  Hangar aHangar = new Hangar(); // clase Hangar, miembro de la biblioteca field
  Toolbox portBox = new Toolbox(); // clase Toolbox es miembro de la biblioteca field
  portBox.openLid();
}