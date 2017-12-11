/*                                         [-- VARIABLES --]
          ----------------------------------------------------------------------------------------
          This page contains all of the global variables for the pipboy program. I have organised
          these into sections, such as Classes, States, Strings, Sounds, ect.
          ----------------------------------------------------------------------------------------
*/

import gifAnimation.*;
import ddf.minim.*;

Gif myAnimation;
Gif dataAnimation1;
Gif dataAnimation2;
Gif dataAnimation3;
Gif dataAnimation4;
Gif dataAnimation5;
Gif dataAnimation6;
Gif dataAnimation7;

Minim minim;
AudioPlayer heal;
AudioPlayer menu;
AudioPlayer menuInv;
AudioPlayer menuInv2;
AudioPlayer equip;
AudioPlayer radio;

PImage img;
PImage weight;
PImage money;
PImage gear;
PImage thing;
PImage mapimg;

int state = 1;
int invState = 1;
int invAllState = 0;
int invJunkState = 0;
int invEquipState = 0;
int radioState = 6;
int dataState = 0;
int menubarx = 0;
int menubary = 50;
int stimpacksLow = 0;
int i = 0;
PFont Font1;
color injured = color(0);
color healed = color(0, 200, 0);
color stimpak = color(0, 150, 0);


float t = 0.0;
float dt = .1;
int diam = 2;
float amp = 50.0;
float frq = 0.0;
int d = day();
int m = month();
int y = year();
String date;
int seconds;
int minutes;
int hours;
String healthPoints = "HP 57/135";
String stimpacks = "STIMPAK (1)";
String StatTextString = "";
String[] inventory = {"ALL", "WEAPONS", "AID", "JUNK"};
String[] allItems = {"Baseball", "Desk Fan", "Duct Tape(2)", "Pipe Rifle", "Radaway (4)", "Paint Can"};
String itemAllSelection[] = {"Cork (2)\nLeather", 
                             "Gears(2)\nScrew(2)\nSteel(2)", 
                             "Cloth(2)\nAdhesive(2)", 
                             "Steel(4)\nScrew(1)",
                             "No Materials",
                             "Oil(2)\nSteel(2)"};
String radioStation[] = {"Enclave Radio",
                         "Galaxy News Radio",
                         "Outcast Distress Signal",
                         "Recon Craft Theta Beacon",
                         "Wernher's Distress Signl"};
String itemWeight[] = {"0.5", "3", "0.1", "2.3", "0.1", "5"};
String itemValue[] = {"0.4", "6", "12", "20",  "80", "10"};
String equipItem = "EQUIP";
String statistics[] = {"Strength", "Perception", 
                       "Endurance", "Charisma", 
                       "Intelligence", "Agility", 
                       "Luck"};