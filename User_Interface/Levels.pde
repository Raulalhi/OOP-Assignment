
Level[] Levels = new Level[3];
String[] LevelDesc = {"Water", "Oxygen", "Carbon Dioxide"};

void displayLevels() {
  
  float levelY = cy - 160;
  float textY = 150;
  for( int i = 0; i < Levels.length; i++)
  {
    
    textAlign(CENTER);
    text(LevelDesc[i], cx, textY);
    Levels[i] = new Level(cx, levelY);
    Levels[i].display();
    levelY += 160;
    textY += 160;
  }
}
class Level {
  
  float x;
  float y;
  float w;
  float sw;
  float h;
  float r;
  color fill;
  
  Level(float x, float y) {
    
    this.x = x;
    this.y = y;
    w = width/4;
    this.sw = 50;
    h = 50;
    r = 100;
    this.fill = color(0, 255, 255);
    
  }
  
  void display()
  {
    
    fill(fill);
    noStroke();
    rectMode(CORNER);
    rect(x - w/2 , y - h/2, sw, h, r);
    
    noFill();
    strokeWeight(4);
    stroke(0,255,255);
    rectMode(CENTER);
    rect(x,y,w,h,r);
  }
}