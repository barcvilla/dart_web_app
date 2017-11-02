main()
{
  num index = 0;
  while(true)
    {
      print(index);
      if(index  == 10)
        {
          // set valor y saltamos a la siguiente iteracion
          index = 20;
          continue;
        }
      else if(index == 20)
        {
          // esto se ejecuta en la sgte iteracion
          // no podemos cambiar el literal bool de true en la condicion while
          // pero este loop termine a causa del break
          break;
        }
        index++;
    }
}