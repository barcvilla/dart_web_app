main()
{
  String language = "Dart";

  void outer()
  {
    String level = "one";
    String example = "scope";

    void inner()
    {
      // declaramos una nueva variable llamada level en la memoria del alcance inner
      // incluso el nombre identificador es el mismo que del lado outer
      Map level = {'count': "Two"};

      print('--');
      print('inner::outer.hashcode ' + outer.hashCode.toString());
      print('inner::inner.hashcode ' + outer.hashCode.toString());
      print('inner::language.hashcode ' + language.hashCode.toString());
      print('inner::example.hashcod ' + example.hashCode.toString());

      print('inner::level.hashcode ' + level.hashCode.toString());
    }
    //  tiene solo acceso al alcance de las variables outer
    print('--');
    print('ouuter::outer.hashcode ' + outer.hashCode.toString());
    print('outer::inner.hashcode ' + outer.hashCode.toString());
    print('outer::language.hashcode ' + language.hashCode.toString());
    print('outer::example.hashcode ' + example.hashCode.toString());

    print('outer::level.hashcode' + level.hashCode.toString());
    inner();
  }
  print('--');
  print('main::language.hashcode ' + language.hashCode.toString());
  print('main::outer.hashcode ' + outer.hashCode.toString());
  print('main::inner.hashcode N/A');

  outer();
}