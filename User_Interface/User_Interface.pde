//OOP Assignment 1
//Raul Alvarez
MenuChoice[] Options = new MenuChoice[10];

void setup()
{
  fullScreen();
  background(51);
  DrawFrame();
  
  for( int i = 0; i < Options.length; i++)
  {
    Options[i] = new MenuChoice(1,1,1,1);
  }
}



void draw()
{
  int cx = width/2;
  int cy = height/2;

  float lines = cx/5;
  float startpoint = (height - cx) / 2;
  
  for( int i = 0; i < 5; i++)
  {
    strokeWeight(1);
    
    line(5, startpoint, width, startpoint);
    startpoint += lines;
  }
  

  
}