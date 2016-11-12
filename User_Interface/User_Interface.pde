//OOP Assignment 1
//Raul Alvarez
MenuChoice[] Options = new MenuChoice[10];

void setup()
{
  size(1280, 720);
  background(51);
  
}

void drawMenu()
{
  int cx = width/2;
  
  
  float startX = 0;
  float startY = (height - cx) / 2;
  float rheight= cx / 5;
  float rwidth = cx;
  
  for( int i = 0; i < Options.length; i++)
  {
    
    Options[i] = new MenuChoice(startX, startY, rwidth, rheight);
    Options[i].checkOption(mouseX, mouseY);
    Options[i].display();
    
    
    startY = startY + rheight;
    
    if( i == 4)
    {
      startX = cx;
      startY = (height - cx) / 2;
    }
  }
}


void draw()
{
  drawMenu();
  DrawFrame();



}
  
  