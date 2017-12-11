void inv()
{
   //Change Menu Bar Position
   menubarx = 175;
 
   //Create Bottom Menu Stats
   textSize(20);
   fill(0, 200, 0);
   text("133/240", 40, height - 18);
   text("276", 5*width/16, height - 18);
   noStroke();
 
   //Displaying Images
   image(img, width/2+width/10, height/5, width/4, height/4);
   image(weight, 13, height-38, 25, 25);
   image(money, 18+width/4, height-38, 25, 25);
 
   //Item Rectangle
   fill(0, 20, 0);
   rect(10, height/5, width/2, height/2);
 
   //Misc Tools
   noStroke();
   fill(0, 150, 0);
   rect(5, height - height/8, width/10, height/22, 6);
   fill(0, 60, 0);
   text("DROP", 15, height - height/11);
 
   /*
       submenu selection: I would have prefered to use another mousePressed
                          function, but I decided to utilize keyPressed to 
                          add some variety to the functionality of my program.
   */
   if (keyPressed)
   {
     if (key == '1')
     {
       invState = 1;
       menuInv2.rewind();
       menuInv2.play();
     }
     if (key == '2')
     {
       invState = 2;
       menuInv2.rewind();
       menuInv2.play();
     }
     if (key == '3')
     {
       invState = 3;
       menuInv2.rewind();
       menuInv2.play();
     }
     if (key == '4')
     {
       invState = 4;
       menuInv2.rewind();
       menuInv2.play();
     }
   }
 
 /*
     Display Submenu: The Menu Options change depending on which submenu you are
                      in, adding a dynamic feeling to the submenu.
 */
 textSize(25);
 switch(invState)
 {
       case 1:
         fill(0, 160, 0);
         text(inventory[0], 290, 80);
         textSize(20);
         fill(0, 100, 0);
         text(inventory[1], 350, 80);
         textSize(16);
         text(inventory[2], 470, 80);
         text(inventory[3], 510, 80);        
         invAll();
         break;
   
       case 2:
         fill(0, 160, 0);
         text(inventory[1], 290, 80);
         textSize(20);
         fill(0, 100, 0);
         text(inventory[0], 240, 80);
         text(inventory[2], 440, 80);
         textSize(16);
         text(inventory[3], 490, 80);         
         invWeapon();
         break;
   
       case 3:
         fill(0, 160, 0);
         text(inventory[2], 340, 80);
         textSize(20);
         fill(0, 100, 0);
         text(inventory[1], 220, 80);
         text(inventory[3], 400, 80);
         textSize(16);
         text(inventory[0], 180, 80);       
         invAid();
         break;
         
       case 4:
         fill(0, 160, 0);
         text(inventory[3], 380, 80);
         textSize(20);
         fill(0, 100, 0);
         text(inventory[2], 330, 80);
         textSize(16);
         text(inventory[0], 190, 80);
         text(inventory[1], 240, 80);        
         invJunk();
         break;         
 }
 
}


//Inventory - All Item List
void invAll()
{  
  //Create Item List
  textSize(22);
  fill(0, 200, 0);
  for(i=0;i<6;i++)
  {
    text(allItems[i], 40, height/4 + i*height/14);
  }
  
  
  //Item Selection
  switch(invAllState)
  {
    case 0:
        buttons[0].display();
        break;
        
    case 1:
        buttons[1].display();
        break;
        
    case 2:
        buttons[2].display();
        break;
        
    case 3:
        buttons[3].display();
        
        //Create Equip Button
        textSize(20);
        fill(0, 150, 0);
        rect(25 + width/10, height - height/8, width/5 - width/30, height/22, 6);
        fill(0, 60, 0);
        text(equipItem, 35 + width/10, height - height/11);
        break;
    
    case 4:
        buttons[4].display();
        break;
    
    case 5:
        buttons[5].display();
        break;
  }
}

//Inventory - WEAPONS List
void invWeapon()
{
  //Create Item List
  textSize(22);
  fill(0, 200, 0);
  text(allItems[3], 40, height/4);
  
  fill(0, 200, 0, 100);
  rect(10, height/5, width/2, height/14);
  
  //Equip Button
  fill(0, 150, 0);
  rect(25 + width/10, height - height/8, width/5 - width/30, height/22, 6);
  fill(0, 60, 0);
  textSize(20);
  text(equipItem, 35 + width/10, height - height/11);
  
  //Item Weight/Value
  fill(0, 100, 0);
  rect(width/2 + width/12, height/2 + height/8 + 5, 200, 25);
  rect(width/2 + width/12, height/2 + height/8 + 35, 200, 25);
  fill(0, 200, 0);
  text("Weight", width/2 + width/12 + 2, height/2 + height/6);
  text("Value", width/2 + width/12 + 2, height/2 + height/6 + 30);
}

//Inventory - AID Function
void invAid()
{
  fill(0, 20, 0);
  rect(10, height/5, width/2, height/2);
  
  //Create Item List
  textSize(22);
  fill(0, 200, 0);
  text(allItems[4], 40, height/4);
  
  fill(0, 200, 0, 100);
  rect(10, height/5, width/2, height/14);
  
  //Item Weight/Value
  fill(0, 100, 0);
  rect(width/2 + width/12, height/2 + height/8 + 5, 200, 25);
  rect(width/2 + width/12, height/2 + height/8 + 35, 200, 25);
  fill(0, 200, 0);
  text("Weight", width/2 + width/12 + 2, height/2 + height/6);
  text("Value", width/2 + width/12 + 2, height/2 + height/6 + 30);
}

//Inventory - JUNK Function
void invJunk()
{ 
  //Create Item List
  textSize(22);
  fill(0, 200, 0);
  text(allItems[0], 40, height/4);
  text(allItems[1], 40, height/4 + height/14);
  text(allItems[2], 40, height/4 + 2*height/14);
  text(allItems[5], 40, height/4 + 3*height/14);
   
  //Item Weight/Value
  fill(0, 100, 0);
  rect(width/2 + width/12, height/2 + height/8 + 5, 200, 25);
  rect(width/2 + width/12, height/2 + height/8 + 35, 200, 25);
  fill(0, 200, 0);
  text("Weight", width/2 + width/12 + 2, height/2 + height/6);
  text("Value", width/2 + width/12 + 2, height/2 + height/6 + 30);
  
  //Item Selection
  switch(invJunkState)
  {
    case 0:
        buttons[0].display();
        break;
        
    case 1:
        buttons[1].display();
        break;
        
    case 2:
        buttons[2].display();
        break;
        
    case 3:
        buttons[3].display();
        break;
  }
        

}