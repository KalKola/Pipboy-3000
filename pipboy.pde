
void setup()
{
  size(800, 600);
  background(0);
  frameRate(30);
  statscreate();  
  buttoncreate();
  
  //Creating Font
  Font1 = createFont("Arial Bold", 20);
  
  //Passing Sound to Minim
  minim = new Minim(this);
  
  //Loading Sounds
  heal = minim.loadFile("Sounds/heal.mp3");
  menu = minim.loadFile("Sounds/menu.wav");
  menuInv = minim.loadFile("Sounds/inventory.wav");
  menuInv2 = minim.loadFile("Sounds/inventory2.mp3");
  equip = minim.loadFile("Sounds/equip.wav");
  
  //Loading Gifs
  myAnimation = new Gif(this, "Gifs/stats.gif");
  myAnimation.play(); 
  dataAnimation1 = new Gif(this, "Gifs/data1.gif");
  dataAnimation1.play(); 
  dataAnimation2 = new Gif(this, "Gifs/data2.gif");
  dataAnimation2.play();
  dataAnimation3 = new Gif(this, "Gifs/data3.gif");
  dataAnimation3.play(); 
  dataAnimation4 = new Gif(this, "Gifs/data4.gif");
  dataAnimation4.play(); 
  dataAnimation5 = new Gif(this, "Gifs/data5.gif");
  dataAnimation5.play(); 
  dataAnimation6 = new Gif(this, "Gifs/data6.gif");
  dataAnimation6.play();
  dataAnimation7 = new Gif(this, "Gifs/data7.gif");
  dataAnimation7.play();
  
  //Loading Images
  img = loadImage("Images/crafting.jpg");
  weight = loadImage("Images/inventory_weight.png");
  money = loadImage("Images/inventory.png");
  gear = loadImage("Images/gears.png");
  thing = loadImage("Images/thing.png");
  mapimg = loadImage("Images/map.jpg");
  
}

void draw()
{
  background(0);
  topMenu();
  botMenu();
  time();
  
  switch(state)
  {
     case 1:
         stat();
         break;
     case 2:
         inv();
         break;
     case 3:
         radio();
         break;
     case 4:
         mapp();
         break;
     case 5:
         data();
         break;
   }
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


void time()
{
  //Displaying Current Time
  hours = hour();
  minutes = minute();
  seconds = second();
}

void statscreate()
{
  //Creating Data Items Class Objects
  for(int j = 0;j<7;j++)
  {
    stats[j] = new Stat (10, height/5 + j*height/14);
  }
}

void buttoncreate()
{
  //Creating Inventory Button Class Objects
  for(int j = 0;j<6;j++)
  {
    buttons[j] = new Button (10, height/5 + j*height/14, itemAllSelection[j], 
    itemWeight[j], itemValue[j], allItems[j]);
  }
}

void mousePressed()
{
   //Top Menu function
   if(mousePressed)
   {
       if(mouseX>70 && mouseX<140 && mouseY>25 && mouseY<40)
       {
         state = 1;
       }
       if(mouseX>200 && mouseX<230 && mouseY>25 && mouseY<40)
       {
         state = 2;
       }
       if(mouseX>300 && mouseX<350 && mouseY>25 && mouseY<40)
       {
         state = 3;
       }
       if(mouseX>420 && mouseX<480 && mouseY>25 && mouseY<40)
       {
         state = 4;
       }
       if(mouseX>530 && mouseX<590 && mouseY>25 && mouseY<40)
       {
         state = 5;
       }
   }  
   
   //Function for Healing Limb
   if(mousePressed)
   {
     if(state == 1)
     {
        if(mouseX>width/2 + width/6 && mouseX<width/2 + width/6 + 50
           && mouseY>height/2 + height/4 && mouseY<height/2 + height/4 +20)
           {
             injured = healed;
             healthPoints = "HP 135/135";
           }
     }
   }   
  
    if(mousePressed)
    {
      if(state == 3)
      {
        if(mouseX>width/26 && mouseX<width/26 + 320 && 
           mouseY>height/4 + height/40 && mouseY<height/4 + height/40 + height/12)
        {
           radioState = 0;
           frq = 0.4;
           amp = 50;
        }
        if(mouseX>width/26 && mouseX<width/26 + 320 && 
           mouseY>height/4 + height/40 + height/9 && mouseY<height/4 + 2*height/40 + 2*height/12)
        {
           radioState = 1;
           frq = 0.2;
           amp = 70;
        }
        if(mouseX>width/26 && mouseX<width/26 + 320 && 
           mouseY>height/4 + 5*height/25 + height/30 && mouseY<height/4 + 5*height/25 + 3*height/30)
        {
           radioState = 2;
           frq = 0.3;
           amp = 20;
        }
        if(mouseX>width/26 && mouseX<width/26 + 320 && 
           mouseY>height/4 + height/40 + height/3 && mouseY<height/4 + 4*height/40 + 4*height/12)
        {
           radioState = 3;
           frq = 0.9;
           amp = 30;
        }
        if(mouseX>width/26 && mouseX<width/26 + 320 && 
           mouseY>height/2 + height/5 && mouseY<460)
        {
           frq = .2;
           amp = 40;
           radioState = 4;
        }
        if(mouseX>5 && mouseX<(height - height/8) && mouseY>height-height/8 && mouseY<(height-height/8)+height/22)
        {
          frq = 0;
        }
         
      }
    }
  
}