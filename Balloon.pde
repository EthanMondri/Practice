class Balloon
{
  int myX, myY, mySize;
  Balloon(int x, int y)
  {
    mySize = 0;
    myX = x;
    myY = y;
  }
  void inflate(int x)
  {
    mySize += x;
  }
  void show(color c)
  {
    fill(c);
    noStroke();
    ellipse(myX, myY, mySize, mySize);
  }
}
