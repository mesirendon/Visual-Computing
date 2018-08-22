PImage img;
PImage img2;
void setup() {
  img = loadImage("/home/mesi/Projects/University/Visual Computing/01-Intro/Bogota.jpeg");
  img2 = loadImage("/home/mesi/Projects/University/Visual Computing/01-Intro/Bogota.jpeg");
  print(img.width);
  print(img.height);
  img.loadPixels();
  for(int i = 0; i< img.height*img.width; i++){
    float b = brightness(img.pixels[i]);
    color c = color(b, b, b);
    img.pixels[i] = c;
  }
  img.updatePixels();
  size(1500, 1000);
}

void draw() {
  image(img, 0, 0);
  image(img2, 0, 500);
}
