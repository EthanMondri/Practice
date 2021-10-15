Target one;
Target two;
void setup()
{
  noLoop();
}
void draw()
{
  background(197);
  one = new Target(25, 50);
  two = new Target(75, 50);
  one.show();
  two.show();
}
void mousePressed()
{
  redraw();
}
