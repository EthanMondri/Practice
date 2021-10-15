class Clover
{
  int numLeaves, myX, myY;
  Clover()//constructor
  {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    numLeaves = (int)(Math.random()*2+3);
  }
  void show()
  {
     //I used some ugly math below
     //you can ignore it for now
    fill(0, 255, 0);
    stroke(0, 255, 0);
    float rot = random(PI*2);
    translate(myX, myY);
    rotate(rot);
    for (float i = 0; i < PI * 2; i+= PI*2/numLeaves)
    {     
      rotate(i);
      translate(6, 0);
      ellipse(0, 0, 10, 10);
      translate(-6, 0);
      rotate(-i);
    }
    rotate(-rot);
    translate(-myX, -myY );
  }
}
