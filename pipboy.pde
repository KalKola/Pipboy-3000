PFont Font1;

void setup()
{
  size(800, 600);
  background(0);
  
  
  Font1 = createFont("Arial Bold", 20);
}

void draw()
{
  background(0);
  topMenu();
}

void topMenu()
{
  stroke(0, 200, 0);
  line(5, 50, 795, 50);
  noStroke();
  textFont(Font1);
  fill(0, 200, 0);
  text("STATS            INV           RADIO            MAP            DATA", 70, 40);

  stroke(0);
  line(60, 50, 150, 50);
  stroke(0, 200, 0);
  line(60, 50, 60, 30);
  line(150, 50, 150, 30);
  line(60, 30, 65, 30);
  line(150, 30, 145, 30);
  
}