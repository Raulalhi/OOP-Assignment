String password="";
String passDisp="";
boolean correct=false;
boolean menu= false;

void FirstScreen()
{
  
  if (correct)
  {
    menu = true;
    drawMenu();
    DrawFrame();
  }
  else
  {
    fill(0,255,255);
    textAlign(CENTER);
    textFont(font, 48);
    text("PROJECT: Martian Greenhouse", width/2, 70);
    text("SPECIE: Ilex aquifolium", width/2, 170);
    text("Enter Password: ", width/2, 270);
    rectMode(CENTER);
    noFill();
    stroke(0,255,255);
    rect(cx, 370, 300, 100);
  }
}

int passX = 550;
void keyPressed()
{
  
  textFont(font, 68);
  text("#", passX, 400);
  password+=key;
  passX += 40;
  
  if(password.equals("holly"))
  {
    correct = true;
  }
  
}