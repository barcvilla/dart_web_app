import 'IBeing.dart';
import 'Birds.dart';
import 'Vertebrates.dart';

class Finchs extends Birds implements IBeign
{
  String color;

  Finchs(this.color):super("Wined")
  {
    print("Finchs is: " + this.color.toString());
  }

  void exist()
  {
    print("-I am s $color Finchs");
  }
}

main()
{
  IBeign aBeign = new Finchs("Yellow");
  aBeign.exist(); //  imprime : -I am a Yellow finchs

  Birds aBird = new Finchs("Yellow");
  aBeign = aBird as IBeign;
  aBeign.exist(); // Imprime: -I am a Yellow Finch

  print(aBird is Birds); // true
  print(aBird is Finchs); // true
  print(aBird is Vertebrates); // true
  print(aBird is IBeign); // true
}