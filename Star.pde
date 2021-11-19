class Star {
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random()*700);
    myY = (int)(Math.random()*700);
  }
  public void show() {
    noStroke();
    fill(myRed, myGreen, myBlue);
    ellipse(myX, myY, 5, 5 );
  }
}
