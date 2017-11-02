import 'Bird.dart';

class Finch extends Bird
{
  String color;
  Finch(this.color):super("Winged")
  {
    print("Finch is: $color");
  }
}

main()
{
  Bird animal = new Finch("Yellow");
}