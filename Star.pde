class Star {
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random()*700);
    myY = (int)(Math.random()*700);
  }
  public void show() {
    stroke(255, 243, 3);
    fill(myRed, myGreen, myBlue);
    ellipse(myX, myY, (int)(Math.random()*6)+4, (int)(Math.random()*6)+4 );
  }
}
