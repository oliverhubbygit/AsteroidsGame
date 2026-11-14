
class Spaceship extends Floater
{
  private float[] trailX = new float[6];
  private float[] trailY = new float[6];
  private int[] trailAlpha = new int[6];
  private int trailTimer = 0;

  public Spaceship()
  {
    corners = 3;

    for(int i = 0; i < 6; i++)
    {
      trailAlpha[i] = 0;
    }

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

  public void showTrail()
  {
    float radians = (float)(myPointDirection * Math.PI / 180);

    trailTimer++;

    // Create a new particle every 3 frames
    if(trailTimer >= 3)
    {
      for(int i = 5; i > 0; i--)
      {
        trailX[i] = trailX[i-1];
        trailY[i] = trailY[i-1];
        trailAlpha[i] = trailAlpha[i-1];
      }

      trailX[0] = (float)myCenterX - 18 * cos(radians);
      trailY[0] = (float)myCenterY - 18 * sin(radians);

      trailAlpha[0] = 255;

      trailTimer = 0;
    }

    // Draw particles
    for(int i = 0; i < 6; i++)
    {
      noStroke();
      fill(255, trailAlpha[i]);

      ellipse(trailX[i], trailY[i], 6, 6);

      trailAlpha[i] -= 4;

      if(trailAlpha[i] < 0)
      {
        trailAlpha[i] = 0;
      }
    }
  }

  public void hyperspace()
  {
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;

    myXspeed = 0;
    myYspeed = 0;

    myPointDirection = Math.random() * 360;
  }
}
