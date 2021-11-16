ArrayList <Thingy> multiplesOf3 = new ArrayList <Thingy>();
void setup()
{
  String firstString;
  Thingy thing;
  for (int i = 0; i < 100; i++)
  {
    if (i % 3 == 0)
    {
      if (i % 9 == 0)
      {
        firstString = (String.valueOf(i) + ":X9");
        thing = new Thingy(firstString);
        multiplesOf3.add(thing);
      }
      else
      {
        firstString = (String.valueOf(i) + ":!X9");
        thing = new Thingy(firstString);
        multiplesOf3.add(thing);
      }
    }
  }
  println(multiplesOf3);
  for (int j = multiplesOf3.size() - 1; j >= 0; j--)
  {
    if (multiplesOf3.get(j).toString().matches("(.*)!X9(.*)"))
    {
      multiplesOf3.remove(j);
    }
  }
  println(multiplesOf3);
  noLoop();
}

void draw()
{
  
}
