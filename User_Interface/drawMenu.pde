void drawMenu()
{
  int cx = width/2;
  
  
  float startX = 0;
  float startY = (height - cx) / 2;
  float rheight= cx / 4;
  float rwidth = cx;
  
  float textX = startX + width/8;
  float textY = startY + rheight/1.5;
  
  for( int i = 0; i < Options.length; i++)
  {
    Options[i] = new MenuChoice(startX, startY, rwidth, rheight);
    Options[i].checkOption(mouseX, mouseY);
    Options[i].display();
    
    textFont(font, 48);
    fill(255);
    textAlign(CENTER);
    fill(255);
    text(Choices[i], textX, textY);
    
    startY = startY + rheight;
    textY = textY + rheight;
    
    if( i == 3)
    {
      startX = cx;
      startY = (height - cx) / 2;
      textX = width - 200;
      textY = startY + rheight/1.5;
    }
  }
}