/*                                           [-- DATA --]
          ----------------------------------------------------------------------------------------
          This Page Contains the Data() Function: Displays a functional list where you can view
                                                             details about each character stat,
                                                             along with Gifs related to each stat.
          ----------------------------------------------------------------------------------------
*/

void data()
{
  //Change Menu Bar Position
  menubarx = 515;
  
  //Create Bot Menu Stats
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
  
  //Create Stats List
  textSize(22);
  fill(0, 200, 0);
  for(i=0;i<7;i++)
  {
    text(statistics[i], 40, height/4 + i*height/14);
  }
  
  //Stats Text
  textSize(16);
  text(StatTextString, 3*width/5 - width/100, 5*height/7);
  
  
   /*
       Stat Selection: Changes the string value of StatTextString depending on
                       which stat has been selected, this is more efficient as
                       I only have a single String variable being printed, and
                       simply update it whenever a stat is selected.
   */
  switch(dataState)
  {
    case 0:
        stats[0].display();
        image(dataAnimation1, 3*width/5, height/5);
        StatTextString = "Strength is a measure of your raw \nphysical power." +
                         "It affects how much you \ncan carry. and the damage" +
                         "of all melee\nattacks.";
        break;
        
    case 1:
        stats[1].display();
        image(dataAnimation2, 3*width/5, height/5);
        StatTextString = "Perception is your enviromental awareness \n" +
                         "and \"sixth sense,\" and affects weapon \n" +
                         "accuracy in V.A.T.S.";
        break;
        
    case 2:
        stats[2].display();
        image(dataAnimation3, 3*width/5, height/5);
        StatTextString = "Endurance is a measure of your overall \n" +
                         "physical fitness. It affects your total \n" +
                         "Health and the Action Point Drain from \n sprinting";
        break;
        
    case 3:
        stats[3].display();
        image(dataAnimation4, 3*width/5, height/5);
        StatTextString = "Charisma is your ability to charm and \n" +
                         "convince others. It affects your success to \n" +
                         "persuade in dialogue and prices when you \nbarter.";
        break;
    
    case 4:
        stats[4].display();
        image(dataAnimation5, 3*width/5, height/5);
        StatTextString = "Intelligence is a measure of your overall \nmental" +
                         "acuity. and affects the number of \nExperience Points" +
                         " earned";
        break;
    
    case 5:
        stats[5].display();
        image(dataAnimation6, 3*width/5, height/5);
        StatTextString = "Agility is a measure of your overall \nfinesse" +
                         "and reflexes. It affects the \nnumber of Action" +
                         "Points in V.A.T.S and \nyour ability to sneak";
        break;
    case 6:
        stats[6].display();
        image(dataAnimation7, 3*width/5, height/5);
        StatTextString = "Luck is a measure of your general good \nfortune." +
                         "It affects the recharge rate of \nCritical Hits," +
                         "and your chances of finding \nbetter items.";
        break;
  }
}