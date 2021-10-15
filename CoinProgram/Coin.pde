class Coin
{
  //three member variables
  boolean heads; 
  int myX, myY, size;

  //three member functions
  Coin(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    size = 50;
  }
  Coin(int x, int y, int Size) //constructor with size
  {
    myX = x;
    myY = y;
    size = Size;
  }
  void flip()
  {
    heads = Math.random() < 0.5 ? true : false;
    headsCount = heads ? headsCount + 1 : headsCount;
    tailsCount = heads ? tailsCount : tailsCount + 1;
  }
  void show()
  {
    fill(205, 127, 50);
    ellipse(myX, myY, size, size);
    fill(0);
    String text = heads ? "heads" : "tails";
    text(text, myX, myY);
  }
}
