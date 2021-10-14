void mousePressed()
{
  x1 = mouseX;
  y1 = mouseY;
}

//void clearVariables()
//{
  //if (keyPressed){
    //if (key == 'v'){
      //x1 = mouseX;
      //x2 = mouseX;
      //x3 = mouseX;
      //y1 = mouseY;
      //y2 = mouseY;
      //y3 = mouseY;
    //}
  //}
//}
void mouseDragged()
{
  x2 = mouseX;
  y2 = mouseY;
}

void getColour()
{
  if (mousePressed&&(mouseButton==RIGHT)) {
    color mouseColour = get(mouseX, mouseY);
    fill(mouseColour);
  }
}

void drawRect()
{
  if (keyPressed) {
    if (key == 'r'&&mousePressed) {
      rect(x1, y1, x2, y2);
    }
  }
}

void drawRightTriangle() //Broken
{
  if (keyPressed) {
    if (key == 't'&&mousePressed) {
      float x3 = dist(x1, y1, x2, y2)+x1;
      //dist(x1,y1,x2,y2);
      float y3 = y1;
      triangle(x1, y1, x2, y2, x3, y3);//----> or use y3
    }
  }
}

void drawLeftTriangle() //Broken
{
  if (keyPressed) {
    if (key == 'y'&&mousePressed) {
      float x3 = dist(-x1,-y1,-x2,-y2)+x1;
      //dist(x1,y1,x2,y2);
      float y3 = y1;
      triangle(x1, y1, x2, y2, x3, y3);//----> or use y3
    }
  }
}

void clearScreen()
{
  if (keyPressed) {
    if (key == 'l') {
      background(255);
      image(colours, 10, 10, 300, 300);
    }
  }
}

void drawText()
{
  textSize(30);
  fill(0);
  text("Hold left click and:", 10, 320);
  text("'r' for Rectangle", 10, 360);
  text("'c' for Circle", 10, 400);
  text("'t' for Triangle", 10, 440);
}

void drawCircle()
{
  if (keyPressed) {
    if (key == 'c'&&mousePressed) {
      //float c1 = x2 * y2;
      circle(x1,y1,dist(x1,y1,x2,y2));
    }
  }
}
