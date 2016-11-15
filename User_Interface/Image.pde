PImage photo;

void showImage()
{
  imageMode(CENTER);
  photo.resize((width/2)-6, (width/2)-6);
  image(photo, width/2, height/2);
}