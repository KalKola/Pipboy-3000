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
}