void stat()
{
  menubarx = 60;
  
  fill(0, 200, 0);
  stroke(0, 200, 0);
  rect(width/3 + width/12, height - height/18, width/4, height/40);
  fill(0, 100, 0);
  rect(width/3 + width/12 + width/4, height - height/18, width/16, height/40);

  textSize(20);
  fill(0, 200, 0);
  text(healthPoints, 10, height - 18);
  text("LEVEL 6", 15 + width/4, height - 18);
  text("AP 90/90", width - width/6, height - 18);
  
  fill(0, 160, 0);
  textSize(28);
  text("STATUS", 60, 80);
  fill(0, 100, 0);
  textSize(25);
  text("SPECIAL", 180, 80);
  fill(0, 60, 0);
  textSize(22);
  text("PERKS", 300, 80);  
  
  stroke(0, 200, 0);
  fill(injured);
  rect(width/2 + width/6, height/2 + height/4, 50, 20, 4);  //left leg
  fill(healed);
  rect(width/2, height/5, 50, 20, 4);  //head
  rect(width/4, height/2, 50, 20, 4);  //right arm
  rect(width/4, height/2 + height/4, 50, 20, 4); //right leg
  rect(width/2 + width/6, height/2, 50, 20, 4); //left arm  
  
  noStroke();
  fill(stimpak);
  rect(5, height - height/8, width/6, height/22, 6);
  fill(0, 150, 0);
  rect(25 + width/6, height - height/8, width/5 - width/60, height/22, 6);
 
  fill(0, 60, 0);
  textSize(20);
  text("STIMPAK (1)", 15, height - height/11);
  text("RADAWAY (3)", 35 + width/6, height - height/11);
 
}