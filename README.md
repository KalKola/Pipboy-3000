## Pipboy-3000
**The Future of Handheld Technology**

![](https://coverfiles.alphacoders.com/435/43587.jpg)

Originally my design for this program was a simple one screen menu that looked reminiscent of the
fallout pipboy, however within a day my ambitions for this project grew exponentially. I fell in
love with programming in processing and decided I wanted to add as much functionality to this
program as possible. This included:

        * A menu allowing users to switch between 5 different screens
        * An inventory screen where users could move between a submenu and equip/use items
        * A radio screen where music could be plays, with an appropriate wave graph next to it
        * A map that displayed nearby locations when hovered over by the user
        * A stat screen where users could heal up damage done
        * A nice asthetic involving gifs, images, and soundfiles
        
I am very glad to report that I managed to include all of my wishes into this program.
I am particularly proud of both my radio station function, as creating a sin graph with many
variables that made the code extremely efficient was very satisfying, and also very happy with 
the attension to detail, as almost every part of this program draws inspiration from the PipBoy.

In order to code this, I worked on each screen one at a time, to ensure that in the event of an
error, I always knew which screen it was in. I began with the inventory screen, as at the time I
believed it would prove the most challenging to code, however it turned out to be quite simple,
involving a simple array of item names, an iterating list of styled rectangles, and a quite simple
mousePressed/keyPressed function.

The main difficulty in coding this program was in using relative values (ie: width/x, height). This
is because I included a large selection of functional buttons, menus, submenus, and dynamic lists.
Creating a mousePressed function that was both efficient, and based on relative values was tricky,
and without a doubt took the most amount of time in creating this program, but I believe I found the
perfect balance.

<a href="https://www.youtube.com/watch?v=4nQ_2AmbCyc&feature=youtube">Video Demo</a>

**Instructions for use:**
Most menu options simple involve clicking on each option, however in the inventory 
screen there is a submenu which can be navigated by clicking 1 - 4 on the keyboard. On the radio menu
click on the radio station you desire, and then click on. Remember to turn one station off before you try 
to access another.

![](http://www.reactiongifs.com/r/pcpt.gif)

Rare footage of ~~Patrick Star~~ Chief Programmer<br>Implementing Complex Algorithm



