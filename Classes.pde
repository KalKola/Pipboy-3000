class Stat
{
  float xpos;
  float ypos; 
  
  //Constructor for Stat() Class
  Stat(float a, float b)
  {
    xpos = a;
    ypos = b;
  }
  
  //Display Function for Stat() Class
  void display()
  {
    noStroke();
    fill(0, 200, 0, 100);
    rect(xpos, ypos, width/2, height/14);    
  }
}