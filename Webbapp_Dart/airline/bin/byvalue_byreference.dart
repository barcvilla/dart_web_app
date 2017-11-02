void main()
{
  // los objetos primitivos en Dart: null, num, Boolean, double, int, String
  String pilot = "Jack Murphy";
  Map company = {'airline': 'Just in time'};
  passByValues(pilot, company);
  print('- Check 3');
  print('pilot: ' + pilot);
  print('map object: ' + company.toString());

}

// los objetos primitivos en dart son pasados por valor, mientras que no primitivos son pasados por referencia
/*
  String name : primitive object
  Map vo : value by reference
 */
void passByValues(String name, Map vo)
{
  print('- Check 1');
  print('name: ' + name);
  print('value object: ' + vo.toString());
  name = "Amelia Earhart"; // modificamos un valor primitivo
  vo['airline'] = "Abianca";
  print('- Check 2');
  print('name: ' + name);
  print('value object: ' + vo.toString());
}