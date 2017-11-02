import 'dart:collection';

main()
{
  Queue gates = new Queue();
  gates.addFirst('C');
  gates.addFirst('B');
  gates.addFirst('A');

  var rItem = gates.removeFirst();
  
  gates.addLast('D');
  gates.addLast('E');
  gates.addLast('E');
  gates.addLast('E');
  gates.addLast('F');
  gates.removeLast();

  print(gates);
  print("rItem: " + rItem);
}