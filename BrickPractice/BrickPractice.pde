void setup()
{
  size(380,385);
  noLoop();
}
void draw()
{
  for(int y = 0; y < height; y += 15)
  {
    for(int x = 0; x < width + 50; x += 55)
    {
      Brick bob = new Brick(x,y);
      bob.show();
    }
  }
}
