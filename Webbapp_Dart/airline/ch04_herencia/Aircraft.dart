import "Vehicle.dart";

class Aircraft extends Vehicle
{
  String name = "Aircraft";
  String fueltType;
  String propulsion;
  int maxspeed;

  void goForward()
  {
    print("-$name moves forward-");
  }
}

main()
{
  Aircraft craft = new Aircraft(); // usamosel el constructor implicito
  craft.turnOn();
  craft.goForward();
  craft.turnOff();
}