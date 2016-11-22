void drawSphere() {
  
 translate(width/2, height/2, -50);
 noFill();
 pushMatrix();


   //rotateX(radians(frameCount*3));
   rotateY(radians(frameCount/2));
   sphereDetail(50);
   sphere(290);

 popMatrix();

}