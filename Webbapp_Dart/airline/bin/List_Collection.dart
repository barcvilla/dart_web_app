main()
{
  List words = new List(5); // lista vacia fija generica
  List mixed = ["Fuel", 1, "Wheel", 2]; // lista literal

  List<String> snacks = new List<String>(); // lista vacia de tipo String
  snacks.add("Nuts");
  snacks.add("Soda");
  snacks.add("Coffee");
  snacks.add("Crackers");

  for(String snack in snacks)
    {
      print(snack);
    }
}