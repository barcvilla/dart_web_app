import 'dart:io';

main()
{
  File pub = new File('pubspec.yaml');
  // se ejecuta primero la lectura del archivo externo y hasta que no se termine de leer el archivo no se pasa a la sgte linea de codigo
  print(pub.readAsStringSync());
  print('-Logger-');
}