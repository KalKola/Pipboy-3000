/*                                           [-- MAP --]
          ----------------------------------------------------------------------------------------
          This Page Contains the mapp() Function: Displays a map with a grid overlay. While the 
                                                  mouse is hovered over the grid, the mouseX and
                                                  mouseY co-ordinates are displayed, and if a
                                                  preset area is selected, the area name is 
                                                  printed.
          ----------------------------------------------------------------------------------------
*/

void mapp()
{
  //Change Menu Bar Position
  menubarx = 400;
  
  //Create Bot Menu Stats
  textSize(20);
  fill(0, 200, 0);
  text("4.47km", 40, height - 18);
  text("Washington DC, Arlington", 4*width/14, height - 18);
  noStroke();
  
  //Displaying Map
  tint(255, 126);
  image(mapimg, width/8, height/6, width/2, height/2 + height/6);
  
  //Map Grid Overlay
  stroke(0, 100, 0);
  for(int i=width/8;i<width-5*width/16;i+=width/16)
  {
    line(width/8, i, width-3*width/8, i);
    line(i, width/8, i, width-3*width/8);
  }
  
  //Map Display Box
  noStroke();
  fill(0, 60, 0);
  rect(2*width/3, height/2 - height/16, width/5, height/10, 20);
  
  int currX = mouseX;
  int currY = mouseY;
  
  /*
      Function for displaying current X and Y co-ordinates
      and the area if an area is selected.
  */
  fill(255, 255, 255, 100);
  if(mouseX>100 && mouseX<500 && mouseY>100 && mouseY<500)
  {
    text(currX, 2*width/3 + width/36, height/3 + height/6);
    text(currY, 2*width/3 + width/8, height/3 + height/6);
  }
  if(mouseX>250 &&mouseX<300 && mouseY>300 && mouseY<350)
  {
    text("Arlington Park", 2*width/3 + width/100, 3*height/5);
  }
  if(mouseX>400 &&mouseX<450 && mouseY>250 && mouseY<300)
  {
    text("Lake Arbor", 2*width/3 + width/100, 3*height/5);
  }
  if(mouseX>200 &&mouseX<250 && mouseY>200 && mouseY<250)
  {
    text("Potomac", 2*width/3 + width/100, 3*height/5);
  }
}