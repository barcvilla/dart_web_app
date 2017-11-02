void main()
{
  for(var index = 0; index < 10; index++)
    {
      print('iteration index of : $index');
    }

  // loo for-in recorre toda la coleccion.
  List<String> titles = ['Mr', 'Ms', 'Sr'];
  for(String item in titles)
    {
      print(item);
    }

  // iteramos por todas las claves del objeto Map e imprime el correspondiente key-value
  Map company = {'airline': 'Just-In-Time', 'city': 'San Francisco'};
  for(String key in company.keys)
    {
      print('Key: ' + key);
      print('value: ' + company[key]);
    }
}