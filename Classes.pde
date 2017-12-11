/*                                           [-- CLASSES --]
          ----------------------------------------------------------------------------------------
          This Page Contains the Button() Class: creating the inventory button objects.
                                 Stat() Class: creating the Data menu stats.
          ----------------------------------------------------------------------------------------
*/

class Button
{
  float xpos;
  float ypos;
  String itemSelection;
  String itemWeight;
  String itemValue;
  String allItems;
  
  //Constructor for Button() Class
  Button(float a, float b, String c, String d, String e, String f)
  {
    xpos = a;
    ypos = b;
    itemSelection = c;
    itemWeight = d;
    itemValue = e;
    allItems = f;
  }
  
  //Display Function for Button() Class
  void display()
  {
    fill(0, 200, 0, 100);
    rect(xpos, ypos, width/2, height/14);
    
    //Item Weight/Value
    textSize(18);
    fill(0, 100, 0);
    rect(width/2 + width/12, height/2 + height/8 + 5, 200, 25);
    rect(width/2 + width/12, height/2 + height/8 + 35, 200, 25);
    fill(0, 200, 0);
    text("Weight", width/2 + width/12 + 2, height/2 + height/6);
    text("Value", width/2 + width/12 + 2, height/2 + height/6 + 30);
    text(itemWeight, width/2 + width/12 + 160, height/2 + height/6);
    text(itemValue, width/2 + width/12 + 160, height/2 + height/6 + 30);
  }
  
}

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