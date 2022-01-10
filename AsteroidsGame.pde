
Star[] nightSky = new Star[360];
Spaceship epic = new Spaceship();
boolean aIsPressed = false;
boolean dIsPressed = false;
int myRed = 0;
int myGreen = 0;
int myBlue = 0;
boolean spaceIsPressed = false;
ArrayList <Asteroid> myAsteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> myBullet = new ArrayList <Bullet>();


public void setup() {

  size(700, 700);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 21; i++) {
    myAsteroids.add(new Asteroid());
  }
  myRed = (int)(Math.random()*255)+30;
  myGreen = (int)(Math.random()*255)+30;
  myBlue = (int)(Math.random()*255)+30;
}

public void draw() {
  frameRate(90);
  background(0);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }

  for (int i = 0; i < myBullet.size(); i++) {
    myBullet.get(i).show();
    myBullet.get(i).move();
  }
  for (int i = 0; i < myAsteroids.size(); i++) {
    myAsteroids.get(i).show();
    myAsteroids.get(i).move();
  }

  for (int j = 0; j < myAsteroids.size(); j++) {
    for (int i = 0; i < myBullet.size(); i++) {
      if (dist(myAsteroids.get(j).getX(), myAsteroids.get(j).getY(), myBullet.get(i).getX(), myBullet.get(i).getY() ) < 18) {
        myAsteroids.remove(j);
        myBullet.remove(i);

        break;
      }
    }
  }

  epic.show();
  epic.move();
  if (aIsPressed == true) {
    epic.turn(-4);
  }
  if (dIsPressed == true) {
    epic.turn(4);
  }
}

public void keyPressed() {
  if (key == 'a') {
    aIsPressed = true;
  }
  if (key == 'd') {
    dIsPressed = true;
  }
  if (key == 'w') {
    epic.accelerate(0.6);
  }
  if (key == 's') {
    epic.brake();
  }
  if (key == 'h') {
    epic.hyperspace();
  }
  if (key == ' ') {
    spaceIsPressed = true;
  }
  if (spaceIsPressed == true && aIsPressed == true)
  {
    for (int i = 0; i < 1; i++)
    {
      myBullet.add(i, new Bullet(epic));
    }
  }
  if (spaceIsPressed == true && dIsPressed == true)
  {
    for (int i = 0; i < 1; i++)
    {
      myBullet.add(i, new Bullet(epic));
    }
  }
  if (spaceIsPressed == true)
  {
    for (int i = 0; i < 1; i++)
    {
      myBullet.add(i, new Bullet(epic));
    }
  }
}


public void keyReleased() {
  if (key == 'a') {
    aIsPressed = false;
  }
  if (key == 'd') {
    dIsPressed = false;
  }
  if (key == ' ')
  {
    spaceIsPressed = false;
  }
  
}
