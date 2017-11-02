import "Aircraft_abstract.dart";

class Blimp extends Aircrafts
{
  Blimp(int maxspeed)
  {
    this.maxspeed = maxspeed;
    this.name = "Blimp";
  }
}

main()
{
  Aircrafts craft = new Blimp(73);
  craft.turnOn();
  craft.goForward();
  craft.turnOff();
}
