library field;

String _fenceKey = "A1B2C3"; // private member con el guion bajo

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
  openFence(_fenceKey);
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
  }

  void openLib()
  {
    print("-open Toolbob lib-");
  }
}