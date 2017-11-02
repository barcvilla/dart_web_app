main()
{
  String language = "Dart";
  void outer()
  {
    String language = 'one';
    String example = 'scope';

    // child void
    void inner() // otro alcance hijo con variables heredadas
    {
      // la siguiente variable level tiene prioridad sobre la anterior
      // la variable nombrada en el alcance fuera con el mismo nombre del identificador
      Map level = {'count': "Two"};
      // imprime example: scope, level:two
      print('example: $example, level: $level');
      // heredamos del alcance de afuera : main
      print('What Language: $language');
    }
    inner();
    // prints example: scope, level: one
    print('example: $example, level: $language');
  }
  outer();
}