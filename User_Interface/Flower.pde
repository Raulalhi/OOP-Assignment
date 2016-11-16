
int branches = 10;
float tPos=radians(0);
float tSpeed=0.00;
float tForce = 0.00002;


void tree(float x, float y, float a, float l, int c, int s, int branches)
{
  if (branches==0)
  {
    return;
  }
  
  
  color c1 = c;
  float x2 = l*cos(a)+x;
  float y2 = l*sin(a)+y;
  
  if (branches == 10)
  {
    stroke(51);
  }
  
  else
  {
  stroke(0,c1,c1);
  }
  strokeWeight(s);
  line(x, y, x2, y2);

  tree(x2, y2, a-tPos*PI, l*0.8, c1+20, s-1, branches -1);
  tree(x2, y2, a+tPos*PI, l*0.8, c1+20, s-1, branches -1);
}