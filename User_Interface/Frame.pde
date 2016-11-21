
void DrawFrame()
{
  int cx = width/2;
  int cy = height/2;
  
  noFill();
  stroke(0,255,255);
  strokeWeight(5);
  
  fill(0);
  strokeWeight(4);
  ellipse(cx, cy, cx, cx);
}