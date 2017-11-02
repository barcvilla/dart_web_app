import "Aircraft_abstract.dart";
import "Blimp.dart";

class Plane extends Aircrafts
{
  Plane()
  {
    this.maxspeed = 537;
    this.name = "Plane";
  }

  void showSmoke()
  {
    print("-Show Smoke-");
  }
}

main()
{
  Aircrafts craft;

  craft = new Blimp(73);
  craft.turnOn();
  craft.goForward();
  craft.turnOff();

  craft = new Plane();
  craft.turnOn();
  craft.goForward();
  craft.turnOff();
}