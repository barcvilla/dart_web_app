import "Vertebrates.dart";

abstract class Birds extends Vertebrates
{
  Birds(String action) : super("spined")
  {
    print("Bird is: $action");
  }
}