tar[] shtar = new Star[200];
Spaceship Matthew;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();


boolean aPressed = false;
boolean wPressed = false;
boolean dPressed = false;
boolean spacePressed = false;
boolean hPressed = false;

public void setup()
{
  size(600, 600);
  for (int i = 0; i < shtar.length; i++) {
    shtar[i] = new Star();
  }
  for (int q = 0; q<20; q++) {
    rocks.add(new Asteroid());
  }
  Matthew= new Spaceship();
}
public void draw()
{
  background(0);
  for (int i = 0; i < shtar.length; i++) {
    shtar[i].show();
  }
  for (int q = 0; q<rocks.size(); q++) {
    rocks.get(q).show();
    rocks.get(q).move();
    double distance = dist((float)Matthew.getCenterX(), (float)Matthew.getCenterY(), (float)rocks.get(q).getCenterX(), (float)rocks.get(q).getCenterY());
    if (distance <= 20) {
      rocks.remove(q);
    }
  
  
  }
  Matthew.show();
  Matthew.move();

  if (aPressed == true) {
    Matthew.turn(-5);
  }
  if (wPressed == true) {
    Matthew.accelerate(0.1);
  }
  if (dPressed == true) {
    Matthew.turn(5);
  }
   if (hPressed == true) {
    Matthew.hyperSpace();
  }
}

public void keyPressed() {
  if (key=='a') {
    aPressed = true;
  } else if (key == 'w') {
    wPressed = true;
  } else if (key == 'd') {
    dPressed = true;
  } else if (key == ' ') {
    spacePressed = true;
  } else if (key == 'h') {
    hPressed = true;
  }
}

public void keyReleased() {
  if (key=='a') {
    aPressed = false;
  } else if (key == 'w') {
    wPressed = false;
  } else if (key == 'd') {
    dPressed = false;
  } else if (key == ' ') {
    spacePressed = false;
  } else if (key == 'h') {
    hPressed = false ;
  }
}
class Asteroid extends Floater
{
  PShape ast;
  private double rotateSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-5, -4, 3, 8, 12, 7};
    yCorners = new int[]{-6, 5, 10, 9, 0, -9};
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600); 
    myColor = 180;
    myXspeed = (int)(Math.random()*8);
    myYspeed = (int)(Math.random()*8);
    myPointDirection = (Math.random()*360);
    rotateSpeed = (int)(Math.random()*15);
  }
  public void move() {
    turn(rotateSpeed);
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
