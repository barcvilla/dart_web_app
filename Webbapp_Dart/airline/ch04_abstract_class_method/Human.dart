import "Being.dart";

class Human extends Being
{
  void exist()
  {
    print("I am I");
  }
}

main()
{
  Being woman = new Human();
  woman.exist();
}