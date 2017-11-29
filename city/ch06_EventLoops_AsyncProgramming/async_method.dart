import 'dart:async';

main()
{
  expensiveCalc().then((index) => print(index));
  scheduleMicrotask(() => print('Microtask'));
}

expensiveCalc() async
{
  int index = 0;
  int expensive()
  {
    while(index < 123456789)
      {
        index++;
      }
      return index;
  }
  return expensive(); // retorna comportamiento como Completer.complete
}