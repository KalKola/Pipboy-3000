PFont Font1;
int menubarx = 60;
int menubary = 50;

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
  botMenu();
}

void topMenu()
{
  stroke(0, 200, 0);
  line(5, menubary, 795, menubary);
  noStroke();
  textFont(Font1);
  fill(0, 200, 0);
  text("STATS            INV           RADIO            MAP            DATA", 70, 40);

  stroke(0);
  line(menubarx, menubary, menubarx + 90, menubary);
  stroke(0, 200, 0);
  line(menubarx, menubary, menubarx, menubary - 20);
  line(menubarx + 90, menubary, menubarx + 90, menubary - 20);
  line(menubarx, menubary - 20, menubarx + 5, menubary - 20);
  line(menubarx + 90, menubary - 20, menubarx + 85, menubary - 20);
  
}

void botMenu()
{
   noStroke();
   fill(0, 100, 0);                 
   rect(5, height - height/15, width/4, height/19);
   rect(10 + width/4, height - height/15, width/2, height/19);
   rect(15 + 3*width/4, height - height/15, width/4 - 20, height/19);      
}