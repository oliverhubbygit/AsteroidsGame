class Asteroid extends Floater
{
  public String type;
  private double rotSpeed;
  private double hue;
  private double hueSpeed;
  public Asteroid() {
    myXspeed = Math.random() * 12 - 6;
    myYspeed = Math.random() * 12 - 6;
    myPointDirection = Math.random() * 720 - 360;
    hue = Math.random()*360;
    hueSpeed = Math.random()*3 + 1;
    if ( (int)(Math.random()*10) == 0) {
      type = "Rainbow";
      hue = Math.random()*360;
      hueSpeed = Math.random()*6 + 3;
    } else {
      type = "Reg";
      myColor = color(255, 0, 0);
    }

    myCenterX = Math.random()*width;
    myCenterY = Math.random()*height;

    if ( (int)(Math.random()*3) == 0) {
      type = "Rainbow";
      myColor = color((int)(Math.random()*225)+30, (int)(Math.random()*225)+30, (int)(Math.random()*225)+30);
    } else {
      type = "Reg";
      myColor = color(255, 0, 0);
    }

    corners = 31;
    xCorners = new int[corners];
    yCorners = new int[corners];

    int[] xs = {  0, -2, -4, -1, 2, 3, 11, 20, 23, 14,
      7, 15, 23, 28, 30, 29, 23, 15, 7, 3,
      0, -3, -7, -15, -23, -29, -30, -28, -23, -15, -7};
    int[] ys = {-15, -23, -32, -35, -31, -23, -32, -35, -29, -23,
      -20, -21, -17, -9, 0, 10, 20, 26, 29, 27,
      24, 27, 29, 26, 20, 10, 0, -9, -17, -21, -20};

    for (int i = 0; i < corners; i++) {
      xCorners[i] = xs[i];
      yCorners[i] = ys[i];
    }
  }
  public double getmyCenterX() {
    return(myCenterX);
  }
  public double getmyCenterY() {
    return(myCenterY);
  }
  public void move() {
    myPointDirection += rotSpeed;
    rotSpeed = (int)(Math.random()*5)+1;
    if (type.equals("Rainbow")) {
      hue = (hue + hueSpeed) % 360;

      colorMode(HSB, 360, 100, 100);
      myColor = color((float)hue, 100, 100);
      colorMode(RGB, 255);
    }

    super.move();

    if (dist((float)myCenterX, (float)myCenterY,
      (float)ship.getmyCenterX(), (float)ship.getmyCenterY()) <= 20) {
    }
  }
  public boolean hitShip() {
  return dist((float)myCenterX, (float)myCenterY,
              (float)ship.getmyCenterX(), (float)ship.getmyCenterY()) <= 20;
}
}
