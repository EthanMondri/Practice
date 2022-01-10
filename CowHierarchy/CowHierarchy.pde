ArrayList <Cow> cList = new ArrayList <Cow>();
void setup()
{
  noLoop();
  cList.add(new Cow());
  cList.add(new Cow(1));
  cList.add(new Cow(2));
  cList.add(new BlueCow(3));
  cList.add(new Cow(4));
  cList.add(new BlueCow(5));
  cList.add(new BlueCow(6));
  cList.add(new Cow(7));
}
void draw()
{
  for (Cow c : cList)
  {
    println("I am a " + c.getType() + " #" + c.getTag() + " and I \"" + c.getSound() + "\"");
  }
}
