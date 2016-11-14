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
  //superformula();
  tSpeed+=tForce;
  tPos+=tSpeed;
if (tPos>radians(5)&&tSpeed>0) {
    tForce=-0.00002;
  }
  if (tPos<radians(5)&&tSpeed<0) {
    tForce=0.00002;
  }
  tree(width/2, height - 50, -PI/2, height/8, 0, 11, branches);  //Drawing just one tree
}

  
    