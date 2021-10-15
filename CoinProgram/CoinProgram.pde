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
  println("Heads Percentage is: " + ((float)headsCount / (headsCount+tailsCount)));
  println("Tails Percentage is: " + ((float)tailsCount / (headsCount+tailsCount)));
  coin.show();
}

void mousePressed()
{
  coin = new Coin(mouseX, mouseY);
  redraw();
}
