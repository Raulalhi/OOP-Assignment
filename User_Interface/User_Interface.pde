//OOP Assignment 1
//Raul Alvarez

MenuChoice[] Options = new MenuChoice[10];
String[] Choices = { "Tree", "Graph", "Image", "Spere", "Levels", "ere", "ere", "8", "9", "9"};

PFont font;
void setup()
{
  size(1280, 720);
  font = createFont("Arial", 48);
}


void drawMenu()
{
  int cx = width/2;
  
  
  float startX = 0;
  float startY = (height - cx) / 2;
  float rheight= cx / 5;
  float rwidth = cx;
  
  float textX = startX + width/8;
  float textY = startY + rheight/1.5;
  
  for( int i = 0; i < Options.length; i++)
  {
    Options[i] = new MenuChoice(startX, startY, rwidth, rheight);
    Options[i].checkOption(mouseX, mouseY);
    Options[i].display();
    
    textFont(font);
    fill(255);
    textAlign(CENTER);
    text(Choices[i], textX, textY);
    
    startY = startY + rheight;
    textY = textY + rheight;
    
    if( i == 4)
    {
      startX = cx;
      startY = (height - cx) / 2;
      textX = width - 200;
      textY = startY + rheight/1.5;
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
  
  if ( tPos > radians(5) && tSpeed > 0)
  {
    tForce=-0.00002;
  }
  if ( tPos < radians(5) && tSpeed < 0)
  {
    tForce=0.00002;
  }
  if (option == 1)
  {
    tree(width/2, height - 50, -PI/2, height/8, 0, 11, branches);
    tree(width/2,  50, PI/2, height/8, 0, 11, branches);//Drawing just one tree
    tree(width/4 + 8,  height/2, TWO_PI, height/8, 0, 11, branches);
    tree(width*3/4 - 8,  height/2, PI, height/8, 0, 11, branches);
    tSpeed+=tForce;
    tPos+=tSpeed;
    
        if ( tPos > radians(5) && tSpeed > 0)
        {
            tForce=-0.00002;
        }
        if ( tPos < radians(5) && tSpeed < 0)
        {
            tForce=0.00002;
        }
  }
  else if(option == 2)
  {
    
  }
  else if(option == 3)
  {

  }
  else if(option == 4)
  {
   
  }
}

int option;
void mousePressed()
{
  if( mouseX > Options[0].rectX && mouseX < Options[0].rectX + Options[0].rectW && mouseY > Options[0].rectY && mouseY < Options[0].rectY + Options[0].rectH)
  {
    option = 1;
  }
}