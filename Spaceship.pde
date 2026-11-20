
class Spaceship extends Floater
{
  public Spaceship()
  {
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 15;
    yCorners[0] = 0;

    xCorners[1] = -10;
    yCorners[1] = -10;

    xCorners[2] = -10;
    yCorners[2] = 10;

    myColor = color(255);

    myCenterX = width/2;
    myCenterY = height/2;

    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void hyperspace()
  {
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;

    myXspeed = 0;
    myYspeed = 0;

    myPointDirection = Math.random() * 360;
  }
  public double getmyCenterX(){
    return(myCenterX);
  }
  public double getmyCenterY(){
    return(myCenterY);
  }
}
