//your variable declarations here
boolean wPressed = false;
boolean aPressed = false;
boolean dPressed = false;
Spaceship bob;
Star []spaceSky = new Star[300];
public void setup() 
{
  size(600,600);
  background(0);
  bob = new Spaceship(300,300);
  //your code here
  for ( int i = 0; i < spaceSky.length; i++){
  spaceSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < spaceSky.length; i++){
  spaceSky[i].show();
  }
  if (wPressed == true){
    bob.accelerate(.5);
  }
  if (dPressed == true){
    bob.turn(5);
  }
  if (aPressed == true){
    bob.turn(-5);
  }
  bob.move();
  bob.show(); 
}
public void keyPressed(){
  if ( key == 'w'){
    wPressed = true;
  }  
  if ( key == 'a'){
    aPressed = true;
  }
  if ( key == 'd'){
    dPressed = true; 
  }
  if ( key == 'h'){
  bob.hyperspace();  
  }
}

public void keyReleased(){
  if ( key == 'w'){
    wPressed = false;
  }  
  if ( key == 'a'){
    aPressed = false;
  }
  if ( key == 'd'){
    dPressed = false; 
  }
}
