int startX = 150;
int startY = 0;
int endX = 300;
int endY = 0;

int start1X = 150+200;
int start1Y = 0;
int end1X = 300+200;
int end1Y = 0;

void setup()
{
  size(500, 500);
  background(#3C3D7E);
  strokeWeight(5);
}

void Fly1() {
  endY = startY + (int)(Math.random()*9);
  endX = startX + (int)(Math.random()*18) - 9;
  //  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
}

void Fly2() {
  end1Y = start1Y + (int)(Math.random()*9);
  end1X = start1X + (int)(Math.random()*12) - 5;
  //  line(start1X, start1Y, end1X, end1Y);
  start1X = end1X;
  start1Y = end1Y;
}

void draw()
{
  //  background(10, 100);
  frameRate(70);
  strokeWeight(5);
  stroke(#78A1BB);
  Fly1();
  Fly2();
  line(startX, startY, endX, endY);
  line(start1X, start1Y, end1X, end1Y);
  noFill();
  stroke(#E0E0E0);
  strokeWeight(10);
  // main window frame
  rect(50, 50, 200, 300);
  rect(250, 50, 200, 300);
  // inner window frame
  strokeWeight(6);
  rect(150, 50, 200, 300);
  rect(50, 150, 400, 100);
  // windowsill
  fill(#675951);
  strokeWeight(8);
  stroke(#BFA89E);
  rect(-20, 400, 550, 120);

  //wall
  fill(#977AD3);
  noStroke();
  rect(0, 0, 45, 400);
  rect(455, 0, 45, 400);
  rect(0, 0, 500, 45);
  rect(0, 355, 500, 50);
}
void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 300;
  endY = 0;

  start1X = 150+200;
  start1Y = 0;
  end1X = 300+200;
  end1Y = 0;
}
