
Second[] Seconds = new Second[60];


void displayTime() {
  
  int  s = second();
  int  m = minute();
  int  h = hour();

  String time = h + ":" + m + ":" + s;
  textAlign(CENTER, CENTER);
  textSize(60);
  fill(0, 255, 255);
  text(time, cx, cy);
  
  
  noFill();
  strokeWeight(2);
  ellipse(cx, cy, 300, 300);
  strokeWeight(4);
  ellipse(cx, cy, 350, 350);
  
  
  float r = 190;
  float theta = 0;
  translate(cx,cy);
  for( int i = 0; i < Seconds.length; i++)
  {
    float angle = map(theta, 0, 60, 0, TWO_PI);
    float x = r * cos(angle);
    float y = r * sin(angle);
    theta++;
    
    Seconds[i] = new Second(i, x, y);
    Seconds[i].display();
    Seconds[i].fillcounter();
  }
}

class Second {
  
  int sec;
  float x;
  float y;
  float w;
  boolean check = true;
  
  Second(int sec, float x, float y)
  {
    this.sec = sec;
    this.x = x;
    this.y = y;
    w = 10;
  }
  
  void display()
  {
    strokeWeight(1);
    
    if(check)
    {
      fill(0,255,255);
    }
    else
    {
      noFill();
    }
    
    ellipse(x, y, w, w);
  }
  
  void fillcounter()
  {
      check = true;
  }
  
}