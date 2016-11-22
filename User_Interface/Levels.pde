
Level[] Levels = new Level[3];
String[] LevelDesc = {"Water", "Oxygen", "Carbon Dioxide"};
float[] Level ={random(50, 300), random(50, 300), random(50, 300)};
color [] colarray = { color(0,random(0,255),random(0,255)), color(0,random(0,255),random(0,255)),color(0,random(0,255),random(0,255))};

void displayLevels() {
  
  float levelY = cy - 160;
  int textY = 150;
  for( int i = 0; i < Levels.length; i++)
  {
    
    textAlign(CENTER);
    fill(255);
    text(LevelDesc[i], cx, textY);
    Levels[i] = new Level(cx, levelY, Level[i], colarray[i]);
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
  
  Level(float x, float y, float sw, color fill) {
    
    this.x = x;
    this.y = y;
    w = width/4;
    this.sw = sw;
    h = 50;
    r = 100;
    this.fill = fill;
    
  }
  
  void display()
  {
     
    fill(fill);
    noStroke();
    rectMode(CORNER);
    rect(x - w/2 , y - h/2, sw + random(-5, 5), h, r);
    
    noFill();
    strokeWeight(4);
    stroke(0,255,255);
    rectMode(CENTER);
    rect(x,y,w,h,r);
  }
}