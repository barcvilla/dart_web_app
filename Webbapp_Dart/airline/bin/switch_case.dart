enum Airports{SFO, LAX, DAL, HOU, NA}
main()
{
  Airports city = Airports.NA;
  switch(city)
  {
    case Airports.SFO:
      print("we found SFO");
      break;
    case Airports.LAX:
      print("we could find LAX");
      break;
    case Airports.DAL:
    case Airports.HOU:
      print("we could find a group of airports in texas");
      break;
    default:
      print("we didn't find any airports");
  }
}