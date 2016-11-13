
float endpoint = height/2 + 60;
void drawPlant() {
  
  float cx = width/2;
  float cy = height/2;
  float theta = 0;
  
  stroke(0,255,0);
  fill(0,255,0);
  
  line(cx, cy + cx/2, cx, endpoint);
  ellipse(cx, cy + 60, 10, 10);
  cy = sin(theta);
  cy+= 0.1;
}