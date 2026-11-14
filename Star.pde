
class Star
{
  private double x;
  private double y;
  
  public Star()
  {
    x = Math.random() * width;
    y = Math.random() * height;
  }
  
  public void show()
  {
    fill(255);
    noStroke();
    ellipse((float)x, (float)y, 3, 3);
  }
}
