import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class User_Interface extends PApplet {

//OOP Assignment 1
//Raul Alvarez
MenuChoice[] Options = new MenuChoice[10];

public void setup()
{
  
  background(51);
  DrawFrame();

  for( int i = 0; i < Options.length; i++)
  {
    Options[i] = new MenuChoice(1,1,1,1);
  }
}



public void draw()
{
  int cx = width/2;
  int cy = height/2;

  float lines = cx/5;
  float startpoint = (height - cx) / 2;

  for( int i = 0; i < 5; i++)
  {
    strokeWeight(1);

    line(5, startpoint, width, startpoint);
    startpoint += lines;
  }



}

public void DrawFrame()
{
  int cx = width/2;
  int cy = height/2;
  
  noFill();
  stroke(0,255,255);
  strokeWeight(5);
  
  rectMode(CENTER);
  rect(cx, cy, width-5 ,cx);
  
  fill(51);
  strokeWeight(4);
  ellipse(cx, cy, cx, cx);
}
class MenuChoice {
  
  float rectX;
  float rectY;
  float rectW;
  float rectH;
  
  MenuChoice(float rectX, float rectY, float rectW, float rectH) {
    
    this.rectX = rectX;
    this.rectY = rectY;
    this.rectW = rectW;
    this.rectH = rectH;
  }
  
  public void display()
  {
    rectMode(CORNER);
    fill(51);
    stroke(0,255,255);
    rect(rectX, rectY, rectW, rectH);
  }
  
  public void checkOption()
  {
   if (mouseX > rectX && mouseX < (rectX + rectW) && mouseY > rectY && mouseY < (rectY + rectH))
   {
     fill(0,255,255);
   }
  }
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "User_Interface" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
