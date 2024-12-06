class Asteroid extends Floater {
  protected double rotSpeed;
  
  public Asteroid() {
    corners = (int)(Math.random() * 7) + 6; 
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    for (int i = 0; i < corners; i++) {
      double angle = 2 * Math.PI * i / corners; 
      int distance = (int)(Math.random() * 30) + 10;
      xCorners[i] = (int)(Math.cos(angle) * distance);
      yCorners[i] = (int)(Math.sin(angle) * distance);
    }

    // Assign a random color
    myColor = (int)(Math.random() * 80) + 150;

    // Random position
    myCenterX = (int)(Math.random() * 600) + 100;
    myCenterY = (int)(Math.random() * 600) + 100;

    myXspeed = (int)(Math.random() * 5) + 1;
    myYspeed = (int)(Math.random() * 5) + 1;
    rotSpeed = (Math.random() * 5) + 1; 
    
    myPointDirection = Math.random() * 360;
  }

  void move() {
    turn(rotSpeed);  
    super.move();  
  }
}
