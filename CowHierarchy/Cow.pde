class Cow
{
  protected String myType;
  protected int myTag;
  protected String mySound;
  public Cow()
  {
    myType = "cow";
    myTag = 0;
    mySound = "mooo";
  }
  public Cow(int tag_)
  {
    this();
    setTag(tag_);
  }
  public String getSound() {return mySound;}
  public String getType() { return myType;}
  public int getTag() { return myTag;}
  public void setTag(int tag_) { myTag = tag_;}
}
