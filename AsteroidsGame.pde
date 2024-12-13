Spaceship l = new Spaceship();
Star[] m = new Star[80];
ArrayList <Bullet> n = new ArrayList <Bullet> ();
ArrayList <Asteroid> o = new ArrayList <Asteroid> ();
public void setup() 
{
  size(800, 800);
  for (int i = 0; i<m.length; i++)
    m[i] = new Star();
  for (int i = 0; i<20; i++) 
    o.add(new Asteroid());
}
public void draw() 
{
  background(20);
  noStroke();
  for (int i = 0; i<m.length; i++) {
    m[i].display();
    m[i].reset();
  }
  for (int i = o.size(); i >= 0; i--) {
    o.get(i).show();
    o.get(i).move();
    float d = dist((float)l.getX(), (float)l.getY(), (float)o.get(i).getX(), (float)o.get(i).getY());
    if (d<38)
      o.remove(i);
  }
  for(int i = n.size(); i >= 0; i--){
    n.get(i).move();
    n.get(i).show();
    for(int j = o.size(); j >= 0; j--){
    float d = dist((float)n.get(i).getX(), (float)n.get(i).getY(), (float)o.get(j).getX(), (float)o.get(j).getY());
    if(d<40){
      n.remove(i);
      o.remove(j);
      break;
      }
    }
  
  }
  l.show();
  l.move();
}
public void keyPressed()
{
    if (key == 's')
      l.accelerate(1);
    if (key == 'w')
      l.accelerate(-1);
    if (key == 'd')
      l.turn(30);
    if (key == 'a')
      l.turn(-30);
    if (key == 'h')
      l.hyperSpace();
    if (key == 'f'){
      n.add(new Bullet(l));
  }
}
