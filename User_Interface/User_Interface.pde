//OOP Assignment 1
//Raul Alvarez

MenuChoice[] Options = new MenuChoice[10];
String[] Choices = { "Tree", "Graph", "Image", "Sphere", "Levels", "Time", "Radar", "", "..",".."};

PFont font;
float cx, cy;

void setup()
{
  frameRate(20);
  size(1280, 720, P2D);
  font = loadFont("Skia-Regular_Extended-48.vlw");
  photo = loadImage("Mars2.gif");
  cx = width/2;
  cy = height/2;
  
}


float t = 0;
void draw()
{
  background(0);
  drawMenu();
  DrawFrame();
  
  
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
    displayTime();
  }
  else if(option == 3)
  {
    showImage();
  }
  else if(option == 4)
  {
   
  }
  else if(option == 5)
  {
   displayLevels(); 
  }
  else if(option == 6)
  {
    displayTime();
  }
  
  else if(option == 7)
  {
    drawRadar(theta, 255);
    noFill();
    stroke(0, 255, 255);
    ellipse(cx, cy, cx, cx);
  }
  else if(option == 8)
  {
    displayTime();
  }
  else if(option == 9)
  {
    showImage();
  }
  else if(option == 10)
  {

  }
}

int option;
void mousePressed()
{
  for( int i = 0; i < Options.length; i++)
  {
    if( mouseX > Options[i].rectX && mouseX < Options[i].rectX + Options[i].rectW && mouseY > Options[i].rectY && mouseY < Options[i].rectY + Options[i].rectH && Options[i].mouse == true)
    {
    option = i +1;
    }
  }
}