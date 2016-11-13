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
      noFill();
      fill(51);
    }
    stroke(0,255,255);
    strokeWeight(4);
    rect(rectX, rectY, rectW, rectH);
  }
  
  void checkOption(int mx, int my)
  {
    int ellX = width/2;
    int ellY = height/2;
    double dist = distance(ellX, ellY, mx, my);
    
    if(mx > rectX && mx < rectX + rectW && my > rectY && my < rectY + rectH && dist > ellX/2)
    {
      mouse = true;
    }
    
    else {
      mouse = false;
    } 
  }
  
  public double distance(int x1, int y1, int x2, int y2)
  {
    int dx = x1 - x2;
    int dy = y1 - y2;
    return Math.sqrt(dx * dx + dy *dy);
  }
}