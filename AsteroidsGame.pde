boolean aIsPressed = false;
boolean dIsPressed = false;

int myRed = 0;
int myGreen = 0;
int myBlue = 0;

Star[] nightSky = new Star[360];
Spaceship epic = new Spaceship();
public void setup() {
  size(700, 700);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  myRed = (int)(Math.random()*255)+30;
  myGreen = (int)(Math.random()*255)+30;
  myBlue = (int)(Math.random()*255)+30;
}
public void draw() {
  frameRate(90);
  background(0, 0, 0);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
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
  if (key == 'q') {
    epic.hyperspace();
  }
}
public void keyReleased() {
  if (key == 'a') {
    aIsPressed = false;
  }
  if (key == 'd') {
    dIsPressed = false;
  }
}
