import 'dart:async';

/**
 * En este ejemplo usamos una variedad de eventos que eventualmente inocan al metodo print. El orden de operaciones en el metodo main()
 * es el siguiente:
 * 1. Las sentencias dentro del bloque main son ejecutados antes de cualquier tarea asincronica
 * 2. Cuando la llamada a main() finaliza. El evento loop empieza al inicio de ambas de sus colas, primero jala y ejecuta las tareas
 *    del microtask en el orden que fueron adicionadas.
 * 3. Cuando la microtask queue es vaciada el event queue empieza a procesar su contenido, lacual es una lista de Futures, tambine
 *    en el orden en el que fueron añadidos
 */
main()
{
  new Future(() => print('Future 1'));
  print('print I');
  new Future(() => print('Future 2'));
  new Future(() => print('Future 3'));
  scheduleMicrotask(() => print('Task A'));
  new Future(() => print('Future 4'));
  scheduleMicrotask(() => print('Task B'));
  print('print II');
  scheduleMicrotask(() => print('Task C'));
  new Future(() => print('Future 5'));
}