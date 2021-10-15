Balloon balloon;
Balloon balloon2;
int balloonStartX;
int balloonStartY;
int balloonX;
int balloonY;
int balloon2StartX;
int balloon2StartY;
int balloon2X;
int balloon2Y;
color c = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
color c2 = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
int clicks = 0;

void setup()
{
  size(600, 600);
}

void draw()
{
  background(0);
  if (clicks > 0)
  {
    balloon.inflate(1);
    balloon.show(c);
  }
  if (clicks > 1)
  {
    balloon2.inflate(10);
    balloon2.show(c2);
  }
}

void mousePressed()
{
  if (clicks == 0)
  {
    balloon = new Balloon(mouseX, mouseY);
    balloonStartX = mouseX;
    balloonStartY = mouseY;
    clicks = 1;
  }
  
}

void mouseReleased()
{
  if (clicks == 1)
  {
    balloon2 = new Balloon(mouseX, mouseY);
    balloon2StartX = mouseX;
    balloon2StartY = mouseY;
    clicks = 2;
  }
}
