
Spaceship ship;
Star[] stars;
ArrayList<Asteroid> apples;
int IQ = 0;
public void setup()
{
  size(800, 600);

  ship = new Spaceship();
  apples = new ArrayList<Asteroid>();
  for (int i = 0; i < 10; i++)
  {
      apples.add(new Asteroid());
  }

  stars = new Star[50];
  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
}

public void draw()
{
  background(0);

  for (int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }

  for (int i = apples.size()-1; i >= 0; i--) {
  apples.get(i).move();
  apples.get(i).show();

  if (apples.get(i).hitShip()) {
  if (apples.get(i).type.equals("Rainbow")) {
    IQ += (int)(Math.random()*10)+13;
  } else {
    IQ += (int)(Math.random()*13)+1;
  }

  apples.remove(i);
}
  fill(255);
textSize(25);
text("IQ: " + IQ, 20, 35);
}

  ship.move();
  ship.show();
}

public void keyPressed()
{
  if (key == 'a' || key == 'A')
  {
    ship.turn(-15);
  } else if (key == 'd' || key == 'D')
  {
    ship.turn(15);
  } else if (key == 'w' || key == 'W')
  {
    ship.accelerate(1);
  } else if (key == 's' || key == 'S')
  {
    ship.accelerate(-1);
  } else if (key == ' ')
  {
    ship.hyperspace();
  }
}
