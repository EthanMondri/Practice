void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  background(0);
  for(int i = 0; i < 100; i++)
  {
    Clover bob = new Clover();
    bob.show();
  }
}
void mousePressed()
{
  redraw();
}
