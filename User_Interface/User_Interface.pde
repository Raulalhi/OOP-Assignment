//OOP Assignment 1
//Raul Alvarez

MenuChoice[] Options = new MenuChoice[10];
String[] Choices = { "Tree", "Graph", "Image", "Sphere", "Levels", "6", "7", "8", "9", "10"};

PFont font;
void setup()
{
  size(1280, 720, P2D);
  font = loadFont("Skia-Regular_Extended-48.vlw");
  photo = loadImage("Mars2.gif");
}


float t = 0;
void draw()
{
  background(51);
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
    
  }
  else if(option == 3)
  {
    showImage();
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
  else if( mouseX > Options[1].rectX && mouseX < Options[1].rectX + Options[1].rectW && mouseY > Options[1].rectY && mouseY < Options[1].rectY + Options[1].rectH)
  {
    option = 2;
  }
  else if( mouseX > Options[2].rectX && mouseX < Options[2].rectX + Options[2].rectW && mouseY > Options[2].rectY && mouseY < Options[2].rectY + Options[2].rectH)
  {
    option = 3;
  }
}