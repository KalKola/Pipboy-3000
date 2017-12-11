void setup()
{
  size(800, 600);
  background(0);
}

void draw()
{
  background(0);
  topMenu();
}

void topMenu()
{
  stroke(0, 200, 0);
  line(5, 60, 795, 60);
  noStroke();
  fill(0, 200, 0);
  text("STATS            INV           RADIO            MAP            DATA", 70, 40);
}