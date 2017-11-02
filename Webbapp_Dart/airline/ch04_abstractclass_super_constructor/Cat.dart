import "Vertebrate.dart";

class Cat extends Vertebrate
{
  Cat() // llamada implicita a :super() esto ocurre antes de la ejecucion del constructor.
  {
    print("Cat is: Alive");
  }
}

main()
{
  Cat pet = new Cat();
}