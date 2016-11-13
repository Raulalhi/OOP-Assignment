//OOP Assignment 1
//Raul Alvarez
MenuChoice[] Options = new MenuChoice[10];

void setup()
{
  size(1280, 720);
  smooth();
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


float t = 0;
void draw()
{
  background(51);
  drawMenu();
  DrawFrame();
  drawPlant();

}

float r (float theta, float a, float b, float m, float n1, float n2, float n3)
{
  return pow(pow( abs( cos( m * theta / 4.0) / a), n2) + pow( abs( sin( m * theta / 4.0) / b), n3), -1.0 / n1);
}
  
    