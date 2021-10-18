class Brick
{
  int myX, myY;
  Brick(int x, int y)
  {
    myX = y % 2 ? 0 == x : x - 25;
    myY = y;
  }
  void show()
  {
    noStroke();
    fill(255,0,0);
    rect(myX,myY,50,10);
  }
}
