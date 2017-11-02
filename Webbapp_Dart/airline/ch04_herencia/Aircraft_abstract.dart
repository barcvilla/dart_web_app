import "Vehicle.dart";

abstract class Aircrafts extends Vehicle
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