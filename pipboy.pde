PFont Font1;
int menubarx = 0;
int menubary = 50;

int state = 1;
int radioState = 6;

float t = 0.0;
float dt = .1;
int diam = 2;
float amp = 50.0;
float frq = 0.0;


color injured = color(0);
color healed = color(0, 200, 0);
color stimpak = color(0, 150, 0);

String healthPoints = "HP 57/135";
String radioStation[] = {"Enclave Radio",
                         "Galaxy News Radio",
                         "Outcast Distress Signal",
                         "Recon Craft Theta Beacon",
                         "Wernher's Distress Signl"};
                         
                         
int d = day();
int m = month();
int y = year();
String date;
int seconds;
int minutes;
int hours;

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
  
}