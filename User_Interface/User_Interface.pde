void setup()
{
  fullScreen();
  background(51);
}



void draw()
{
  int cx = width/2;
  int cy = height/2;
  
  noFill();
  stroke(0,255,255);
  strokeWeight(4);
  
  rectMode(CENTER);
  rect(cx, cy, (2 * cx) - 10 ,cx);
  
  float lines = cx/5;
  float startpoint = (height - cx) / 2;
  
  for( int i = 0; i < 5; i++)
  {
    strokeWeight(1);
    line(5, startpoint, width, startpoint);
    startpoint += lines;
  }
  
  fill(51);
  strokeWeight(4);
  ellipse(cx, cy, cx, cx);
  
  int y1 = cy + cx/2;
  float y2 = cy + cx/2;
  float cx2 = cx;
  
    strokeWeight(1);
    stroke(0,255,0);
    
    ellipse(cx, y2, 30, 30);
    y2 = y2 - 0.5;
  
}