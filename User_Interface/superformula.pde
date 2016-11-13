//void superformula() {
  
//  int a, b;
//  float t = 0;
//  translate(width/2, height/2);
  
//  for( a = 2, b = 2; a < 13; a ++, b++)
//  {
//    beginShape();
//    stroke(255);
//    noFill();
//    for (float theta = 0; theta <= 2 * PI; theta +=0.01) {
//      float rad = r(theta, a, b, 10, 1, sin(t) * 0.5 + 0.5, cos(t) * 0.5 + 0.5);
//      float x = rad * cos(theta) * 50;
//      float y = rad * sin(theta) * 50;
//      vertex(x, y);
//    }
//    endShape();
//  }
  
//  t += 0.1;

//}
//float r(float theta, float a, float b, float m, float n1, float n2, float n3)
//{
//  return pow(pow( abs( cos( m * theta / 4.0) / a), n2) + pow( abs( sin( m * theta / 4.0) / b), n3), -1.0 / n1);
//}