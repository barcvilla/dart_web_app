import 'dart:io';

/**
 * Streams es una implementacion asyncronica de una iteracion de una logitud desconocida. A diferencia de Future, Streams no
 * ha definido un estado de completacion. En un ejemplo anterior se cargo el archivo pubspec.yaml. La accion de cargar datos
 * tiene un ciclo de vida finito. La clase File en Dart tiene un metodo readAsString() que sabe cuando se ha llegado al fin del
 * archivo e invoca al metodo complete(). En contraste, un Streams continua operando hasta que explicitamente removemos el
 * listener.
 *
 * Streams puede ser muy utiles para escuchar multiples eventos en una forma de no-bloqueo. Algunos esenarios donde los eventos
 * de no bloqueo son usados incluyen esperar por el click del mouse, un evento desde una socket connection, leer una lista de
 * contenido de un directorio.
 */
main()
{
  /**
   * La clase Directory expone un metodo list()  que es de tipo Stream. Invocando el metodo listen() del Stream somos capaces de
   * registrar un handler que es invocado para cada evento de un archivo encontrado en su directorio de trabajo actual.
   */
  Directory dir = new Directory('.');
  dir.list().listen(onData);
}

int index = 1;
void onData(FileSystemEntity data)
{
  print("$index: - $data -");
  index++;
}