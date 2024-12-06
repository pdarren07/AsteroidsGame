class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 12;
      xCorners = new int[]{-13, 5, 9, 3, 7, 4, 7, 4, 7, 3, 9, 5};
      yCorners = new int[]{0, -18, -14, -8, -5, -3, 0, 3, 5, 8, 14, 18};
      myColor = 200;
      myCenterX = myCenterY = 400;
      myXspeed = myYspeed = 0;
      myPointDirection = 90;
    }
    void hyperSpace(){
      myCenterX = (int)(Math.random()*600)+100;
      myCenterY = (int)(Math.random()*600)+100;
      myXspeed = myYspeed = 0;
      myPointDirection = (int)(Math.random()*360);
    }
    
}
