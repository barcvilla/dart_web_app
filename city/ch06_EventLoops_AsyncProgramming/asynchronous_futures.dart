import 'dart:io';

/**
 * Future paradigm expone un metodo llamada then(), el cual acepta una referencia a una funcion como argumento. Mientras que el
 * Dart VM esta cargando el archivo de texto en memoria la ejecucion del resto de la app continua. Una vez que todo el archivo
 * externo termina de cargar, la referencia ejecuta con los datos cargados ahora disponibles como un argumento provisto.
 *
 * En la ejecucion vemos que la sentencia Logger es ejecutado antes que el contenido del archivo pubspec.yaml sea impreso. Esto
 * ocurre  porque la ejecucion de la funcion aCallback() es diferido hasta que se complete la tarea, en este caso la
 * completacion de la tarea ocurre luego que pubspec.yaml termina su carga en memoria.
 */
main()
{
  File aFile = new File('pubspec.yaml');
  aFile.readAsString().then(aCallback);
  print('-Logger-');
}

void aCallback(String text)
{
  print(text);
}