library field;
/*
cargamos el archivo de biblioteca parcial cargo.dart en el library field, mediante el uso de part y no import.
Usando part, no solo cargamos el archivo, pero tambien completamos el par bidireccional. Con el paring completo,
field.dart y cargo.dart son unidos juntos para crear una sola biblioteca llamada field.
Mediante la carga de los miembros desde cargo.dart hacia la biblioteca field, hemos expuesto el metodo privado _bagbGrabs() al
resto  de la biblioteca field.
 */
part "cargo.dart";

String _fenceKey = "A1B2C3"; // private member con el guion bajo
String _passcode = "007";

void openFence(key)
{
  if(key == _fenceKey)
    {
      print("-fence swings open-");
    }
}

void gotoField()
{
  print("-goto air field-");
  _grabBags();
  Toolbox hangarbox = new Toolbox();
  hangarbox.openLid();
  hangarbox._closeLid();
  //openFence(_fenceKey);
}

class Hangar
{
  Hangar()
  {
    print("-init hangar-");
  }

  void openDoor()
  {
    print("-open hangar door-");
  }
}

class Toolbox
{
  Toolbox()
  {
    print("-init Toolbox-");
    openLid();
    _closeLid();
  }

  void openLid()
  {
    print("-open Toolbox lib-");
  }

  void _closeLid()
  {
    print("-close Toolbo Lid-");
  }
}