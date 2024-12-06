class Bullet extends Floater
{
  public Bullet(Spaceship n){
    myCenterX = n.getX();
    myCenterY = n.getY();
    myXspeed = n.getXspeed();
    myYspeed = n.getYspeed();
    accelerate(100);
    myPointDirection = 180+n.getPointDirection();
  }
  public void show(){
    fill(57, 255, 20);
    stroke(255);
    ellipse((float)myCenterX, (float)myCenterY-5, 10, 10);
  }
  public void move(){
    double dRadians = myPointDirection*(Math.PI/180);        
    myXspeed = ((10) * Math.cos(dRadians));    
    myYspeed = ((10) * Math.sin(dRadians));
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
       
  }
}
