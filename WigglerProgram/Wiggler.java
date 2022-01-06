class Wiggler
{
  private int myX, myY;
  Wiggler()
  {
    myX = myY = 150;
  }
  void wiggle()
  {
    myX+=(int)(Math.random()*5)-2;
  }
  public void setX(int x_)
  {
    myX = x_;
  }
  public void setY(int y_)
  {
    myY = y_;
  }
  public int getX()
  {
    return myX;
  }
  public int getY()
  {
    return myY;
  }
}
