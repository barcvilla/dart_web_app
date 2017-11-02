main()
{
  var company = {'publisher':'Peachpit'};
  Map musician = {'Beatles':'Please, Please me'};

  // variable scope
  void inner()
  {
    int level = 1; // no visible para main
    String example = "scope"; // no visible para main
    print('example: $example, level: $level');
  }
  inner();
}