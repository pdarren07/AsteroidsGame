class Star
{
  private int myEllipse, myStarX, myStarY, myStarSpeed, myColor;
  private int[] starColors = {
        color(255, 255, 255), color(240, 240, 240), color(230, 230, 230),
        color(220, 220, 220), color(210, 210, 210), color(200, 200, 200),
        color(250, 250, 245), color(245, 245, 250), color(255, 250, 245),
        color(245, 248, 255)
      };
  public Star()
  {
    myEllipse = (int)(Math.random()*10) + 5;
    myStarX = (int)(Math.random()*800);
    myStarY = (int)(Math.random()*800);
    myStarSpeed = 5;
    
  }
  public void reset()
  {
    myStarX += myStarSpeed;
     if (myStarX > 850) 
       myStarX = -100;
  }
  public void display()
  {
    myColor = starColors[(int)(Math.random() * starColors.length)];
    fill(myColor);
    ellipse(myStarX, myStarY, myEllipse, myEllipse);
  }
}
