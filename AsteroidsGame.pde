
Spaceship ship;
Star[] stars;

public void setup() 
{
  size(800, 600);
  
  ship = new Spaceship();
  
  stars = new Star[50];
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
}

public void draw()
{
  background(0);

  ship.move();
  ship.showTrail();
  ship.show();

  for(int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }
}



public void keyPressed()
{
  if(key == 'a' || key == 'A')
  {
    ship.turn(-5);
  }
  else if(key == 'd' || key == 'D')
  {
    ship.turn(5);
  }
  else if(key == 'w' || key == 'W')
  {
    ship.accelerate(0.2);
  }
  else if(key == ' ')
  {
    ship.hyperspace();
  }
}
