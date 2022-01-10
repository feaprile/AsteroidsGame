class Spaceship extends Floater {
  
  public Spaceship() {
    corners = 16;
    
    int scaleFactor = 6;
    
    xCorners = new int[]{-5, -4, -4, 2, 0, 1, 5, 3, 1, 0, -2, -4, -4, -5, -5, -4};
    for (int i = 0; i < xCorners.length; i++) {
      xCorners[i] = xCorners[i] * scaleFactor;
    }
    
    yCorners = new int[]{2, 2, 3, 2, 2, 1, 1, 0, -1, -1, -2, -3, -2, -2, -1, 1};
    for (int i = 0; i < yCorners.length; i++) {
      yCorners[i] = yCorners[i] * scaleFactor;
    }
    
    
    myColor = 255;
    myCenterX = 350;
    myCenterY = 350;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace() {
    myCenterX = (int)(Math.random()*500)+100;
    myCenterY = (int)(Math.random()*500)+100;
    myXspeed = (Math.random()*0.6)-0.3;
    myYspeed = (Math.random()*0.6)-0.3;
    myPointDirection = 0;
  }
  public float getX() {
    return (float) myCenterY;
  }
  public float getY() {
    return (float) myCenterY;
  }
  
  public void accelerate (double dAmount)  
  {          
    double dRadians =myPointDirection*(Math.PI/180);    
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));
    if (myXspeed > 20) myXspeed = 20;
    if (myYspeed > 20) myYspeed = 20;
    if (myXspeed < -20) myXspeed = -20;
    if (myYspeed < -20) myYspeed = -20;
  }
  
  public void brake() {
    myXspeed = 0.1 * myXspeed;
    myYspeed = 0.1 * myYspeed;
  }
}
