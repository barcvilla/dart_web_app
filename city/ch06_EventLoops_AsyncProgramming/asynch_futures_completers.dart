import 'dart:async';

/**
 * Ejemplo donde envolvemos un caro procesamiento dentro de un Future y defiere su ejecucion.
 */
main()
{
  expensiveCalc().then(aCallback);
  print('-Logger-');
}

void aCallback(int index)
{
  print(index);
}

/**
 * La clase Completer, que es una manera explicita de controlar el flujo dentro de un future. La instancia completer tiene dos
 * atributos de interes :  .complete() y .future
 *
 * Completer.future: La propiedad future nos permite adherir a su contrato con la declaracion de la funcion retornando una nueva
 * instancia de un objeto de tipo Future
 *
 * Completer.complete(): El contrato con Future es finalizado cuando la funcion complete() es llamada cuando la tarea es hecha. Si
 * la funcion callback define un metodo parametro, el argumento debe ser provisto por el metodo complete()
 */
Future expensiveCalc()
{
  Completer c = new Completer();
  num index = 0;
  void expensive()
  {
    while(index < 1234567890)
      {
        index++;
      }
      c.complete(index);
  }
  expensive();
  return c.future;
}