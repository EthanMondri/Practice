Coin coin;
int headsCount = 0;
int tailsCount = 0;

void setup() //Currently a CON (85% Tails)
{
  size(500, 300);
  background(0);
  textAlign(CENTER,CENTER);
  coin = new Coin (width/2, height/2, 100);
  noLoop();
}

void draw()
{
  coin.flip();
  println(headsCount);
  println(tailsCount);
  println("Heads Percentage is: " + headsCount/(tailsCount+headsCount));
  println("Tails Percentage is: " + tailsCount/(tailsCount+headsCount));
  coin.show();
}

void mousePressed()
{
  coin = new Coin(mouseX, mouseY);
  redraw();
}

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
    heads = Math.random() < 0.15 ? true : false;
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
