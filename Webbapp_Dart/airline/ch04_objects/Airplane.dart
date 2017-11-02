class Airplane
{
  String color = "Silver";
  String wing = "Triangle";
  int seatCount = 2;
  double fuelCapacity = 100.50;

  double getWeight()
  {
    return 100 + seatCount + fuelCapacity;
  }
}

main()
{
  Airplane yourPlane = new Airplane();
  Airplane myPlane = new Airplane();
  
  print('Data about Airplane');
  print('Airplane wing type: ' + myPlane.wing);
  print('Airplane seat count: ' + myPlane.seatCount.toString());
  yourPlane.seatCount = 1;
  print('yourPlane weight: ' + yourPlane.getWeight().toString());
  print('myPlane weight: ' + myPlane.getWeight().toString());

}