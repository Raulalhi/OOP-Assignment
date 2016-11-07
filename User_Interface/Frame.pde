void DrawFrame()
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
    rectMode(CORNER);
    rect(4, startpoint, width/2, lines);
    rect(width/2, startpoint, width/2, lines);
    startpoint += lines;
  }
  
  fill(51);
  strokeWeight(4);
  ellipse(cx, cy, cx, cx);
}