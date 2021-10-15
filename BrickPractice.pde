void setup()
{
  size(380,385);
  noLoop();
}
void draw()
{
  for(int x = 0; x < width; x += 55)
  {
    for(int y = 0; y < height; y += 15)
    {
      Brick bob = new Brick(x,y);
      bob.show();
    }
  }
}
