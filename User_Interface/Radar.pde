PGraphics pg;
float theta = 0;
float speed = 0.01;
int trailLength = 50;

void drawRadar(float theta, float intensity)
{
  stroke(0, intensity, intensity);
  float x = cx + sin(theta) * cx/2;
  float y = cy - cos(theta) * cx/2;  
  line(cx, cy, x, y);
  if (intensity <= 0)
  {    
    // Use this to disambiguate the parameter theta from the global variable
    this.theta += speed;
    return;
  }
  else
  {
    float intensityChange = 255.0f / trailLength;
    drawRadar(theta - speed, intensity - intensityChange);
  }
}