
void main(){

  String name = "Just-In-Time";
  int year = 2017;
  String month = "July";

  print(getMessageWelcome());
  print(getMessageWelcome(name: name));
  print(getMessageWelcome(name: name, month: month,));
  print(getMessageWelcome(name: name, month: month, year: year));

  /**
  print(getWelcomeMsg(name));
  print(getWelcomeMsg(name, month));
  print(getWelcomeMsg(name, month, year));
  */

  /**
  String name = "Just-In-Time";
  int copyrightYear = 2017;
  print(getWelcomeMessage(name, copyrightYear));

  // almacenamos una referencia a la funcion getWelcomeMessage
  Function aGetWelcomeMessage = getWelcomeMessage;
  print(aGetWelcomeMessage());
 */

}

// Named parameters  and default values
String getMessageWelcome({String name, int year, String month}){
  if(name == null)
    {
      name = "-";
    }
    return "Welcome to " + name + " Terminal ap. copyright $month $year";
}

// Positional Optional Parameter and Default Values
String getWelcomeMsg(String aName, [String aMonth, int aYear])
{
  return "Welcome to " + aName + " Terminal App. Copyright $aMonth $aYear";
}

String getWelcomeMessages(String aName, int aYear)
{
  return "Welcome to " + aName + " Terminal Application. CopyRight $aYear";
}

String getWelcomeMessage(){
  String companyName = getAirlineName();
  return "Welcome to " + companyName + " Terminal Application";
}
getAirlineName() {
  return "Just-In-Time";
}
