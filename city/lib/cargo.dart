part of field;

void gotoBaggageWindow()
{
  print("-goto the baggage buildind window-");
}

void _grabBags() //private function.
{
  print("-A bag from cargo is passed back-");
}

class Baggage
{
  Baggage()
  {
    print('-Im the bag man - I have a passcode of: $_passcode');
  }

  void tryGrabBag(key)
  {
    if(key == _passcode)
    {
      _grabBags();
    }
    else
    {
      print("-Bag man says: you are not authorized");
    }

  }
}
