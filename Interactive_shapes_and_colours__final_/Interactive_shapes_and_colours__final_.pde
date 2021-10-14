//ArrayList<PVector> mousePos = new ArrayList();
color mouseColour;
PImage colours;
float x1;
float x2;
float y1;
float y2;
float x3;
float y3;

void setup()
{
  size(1000, 800);
  background(255);
  colours = loadImage("https://www.sessions.edu/wp-content/themes/divi-child/color-calculator/wheel-5-ryb.png");
  rectMode(CORNERS);
  println("Press 'l' to clear the screen");
  println("Hold left click and:");
  println("'r' for Rectangle");
  println("'c' for Circle");
  println("'t' for Triangle");
  ellipseMode(RADIUS);
}

void draw()
{ 
  drawRect();
  //clearVariables();
  drawCircle();
  drawRightTriangle();
  drawLeftTriangle();
  clearScreen();
  getColour();
  //rect(width/2,height/2,mouseX-500,mouseY-400); ---> Previous code
  image(colours, 10, 10, 300, 300);
}
