class Bullet extends Floater
{
  private float dRadians;

  public Bullet(Spaceship epic) {
    myCenterX = epic.myCenterX;
    myCenterY = epic.myCenterY;
    dRadians = (float) (epic.myPointDirection * (Math.PI/180));
    myPointDirection = epic.myPointDirection;
    myXspeed = 5 * Math.cos(dRadians) + epic.myXspeed;
    myYspeed = 5 * Math.sin(dRadians) + epic.myYspeed;
  }
  public void show() {
    fill(255, 57, 3);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }

  public float getX() {
    return (float) myCenterX;
  }

  public float getY() {
    return (float) myCenterY;
  }
}
