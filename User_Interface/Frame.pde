
void DrawFrame()
{
  int cx = width/2;
  int cy = height/2;
  
  noFill();
  stroke(0,255,255);
  strokeWeight(4);
  
  rectMode(CENTER);
  rect(cx, cy, (2 * cx) - 10 ,cx);
  
  fill(51);
  strokeWeight(4);
  ellipse(cx, cy, cx, cx);
}