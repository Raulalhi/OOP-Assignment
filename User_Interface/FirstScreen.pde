String password="";
boolean correct=false;


void FirstScreen()
{
  
  if (correct)
  {
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
  }
}

void keyPressed()
{
  password+=key;
  
  if(password.equals("holly"))
  {
    correct = true;
  }
  
}