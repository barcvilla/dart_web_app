main()
{
  try
  {
    print("Try and take off backwards...");
    throw new Error();
  }
  catch(exception, stackTrace)
  {
    print("Exception is: " + exception.toString());
    print(stackTrace);
  }
  print("End of Function");
}