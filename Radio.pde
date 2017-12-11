void radio()
{
   //Change Menu Bar Position
   menubarx = 280;
   
   //Create Bottom Menu Stats - Date
   textSize(20);
   fill(0, 200, 0);
   date = String.valueOf(m);
   text(date, width/40, height - 18);
   text(".", width/34 + width/40, height - 18);
   date = String.valueOf(d);
   text(date, width/22 + width/60, height - 18);
   text(".", 3*width/40, height - 18);
   date = String.valueOf(y);
   text(date, 3*width/40 + width/80, height - 18);
 
   //Create Bottom Menu Stats - Time
   text(hours, width/4 + width/40, height - 18);
   text(":", width/4 + 2*width/39, height - 18);
   text(minutes, width/4 + 2*width/40 + width/100, height - 18);
   text(seconds, width/4 + 3*width/40 + width/60, height - 18);   
  
   stroke(255, 255, 0, 100);
   line(width/2 - width/100, 2*height/3, width, 2*height/3);
   line(width/2 - width/100, 2*height/3, width/2 - width/100, height/3);
   for(int j = width/2 - width/100; j<width; j+=50)
   {
      line(j, 2*height/3, j, 2*height/3 + 5);
   }
  
   //Display Radio Station List
   textSize(22);
   fill(0, 200, 0);  
   for(int j=0;j<5;j++)
   {
      text(radioStation[j], 40, height/3 + j*height/10);
   }
  
   //Radio Station Selection
   noStroke();
   fill(0, 200, 0, 100);
   switch (radioState)
   {
      case 0:
            rect(width/26, height/4 + height/25, 2*width/5, height/15);
            break;
      case 1:
            rect(width/26, height/4 + 3*height/25 + height/48, 2*width/5, height/15);
            break;
      case 2:
            rect(width/26, height/4 + 5*height/25 + height/30, 2*width/5, height/15);
            break;
      case 3:
            rect(width/26, height/4 + 7*height/25 + height/20, 2*width/5, height/15);
            break;
      case 4:
            rect(width/26, height/4 + 9*height/25 + height/14, 320, height/15);
            break;
    }
  
    //Off Button
    rect(5, height - height/8, width/10, height/22, 6);
    fill(0, 200, 0);
    text("Off", 15, height - height/11);
  
}