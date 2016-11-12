class MenuChoice {
  
  float rectX;
  float rectY;
  float rectW;
  float rectH;
  boolean mouse;
  
  MenuChoice(float rectX, float rectY, float rectW, float rectH) {
    
    this.rectX = rectX;
    this.rectY = rectY;
    this.rectW = rectW;
    this.rectH = rectH;
  }
  
  void display()
  {
    rectMode(CORNER);
    
    if (mouse)
    { 
      fill(0,255,255);
    } 
    else
    {
      fill(51);
    }
    stroke(0,255,255);
    rect(rectX, rectY, rectW, rectH);
  }
  
  void checkOption(int mx, int my)
  {
    if(mx > rectX && mx < rectX + rectW && my > rectY && my < rectY + rectH)
    {
      mouse = true;
    }
    else {
      mouse = false;
    }
      
  }
}