main()
{
  try
  {
    print("Do thing... Uh Oh..");
    throw new CastError();
  }on CastError catch(exception, stackTrace)
  {
    print("CastError caught...");
  }
  catch(exception, stackTrace)
  {
    print("All other errors caught...");
  }
}