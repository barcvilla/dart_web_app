import 'Animal.dart';

abstract class Bird extends Animal
{
  Bird(String action):super("spined")
  {
    print("Bird is: $action");
  }
}