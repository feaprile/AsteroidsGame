class Asteroid extends Floater {

  private float rotSpeed;

  public Asteroid() {

    rotSpeed = (int)(Math.random()*9)-4;
    
    myColor = color((int)(Math.random()*255)+110,(int)(Math.random()*255)+50,(int)(Math.random()*255)+150, 80s);
    corners = 6;
    int scaleFactor = (int)(Math.random()*6)+2;
    int[] xS = {-7, 3, 9, 2, -7, -11};
    int[] yS = {-4, -4, 2, 6, 4, 2};
    xCorners = xS;
    yCorners = yS;
    for (int i = 0; i < corners; i++) {
      xCorners[i] = xCorners[i] * scaleFactor;
      yCorners[i] = yCorners[i] * scaleFactor;
    }

    myCenterX = (int)(Math.random()*701);
    myCenterY = (int)(Math.random()*701);
    myPointDirection = (int)(Math.random()*360);
    myXspeed = (int) (Math.random()*5)-2;
    myYspeed = (int) (Math.random()*5)-2;
  }
  
  public float getY() {
    return (float) myCenterY;
  }
  public float getX() {
    return (float) myCenterX;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
