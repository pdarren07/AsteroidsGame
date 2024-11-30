
class Spaceship extends Floater {
  public Spaceship(double x, double y){
    myColor = color(255);
    myCenterX = x;
    myCenterY = y;
    myPointDirection = 0;
    myXspeed = 0;
    myYspeed = 0;
    corners = 12;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -13;
    yCorners[0] = 0;
    xCorners[1] = 5;
    yCorners[1] = -18;
    xCorners[2] = 9;
    yCorners[2] = -14;
    xCorners[3] = 3;
    yCorners[3] = -8;
    xCorners[4] = 7;
    yCorners[4] = -5;
    xCorners[5] = 4;
    yCorners[5] = -3;
    xCorners[6] = 7;
    yCorners[6] = 0;
    xCorners[7] = 4;
    yCorners[7] = 3;
    xCorners[8] = 7;
    yCorners[8] = 5;
    xCorners[9] = 3;
    yCorners[9] = 8;
    xCorners[10] = 9;
    yCorners[10] = 14;
    xCorners[11] = 5;
    yCorners[11] = 18;
  }
 
  public void hyperspace(){
      myCenterX = (int)(Math.random()*width);
      myCenterY = (int)(Math.random()*height);
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = (Math.random()*360);
    }
    
  public void move () 
  {         
    myCenterX -= myXspeed;    
    myCenterY -= myYspeed;     

    if(myCenterX > width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY > height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   

  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape();
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
