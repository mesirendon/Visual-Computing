PImage img;
PImage img2;
void setup() {
  img = loadImage("/home/mesi/Projects/University/Visual Computing/01-Intro/Bogota.jpeg");
  img2 = loadImage("/home/mesi/Projects/University/Visual Computing/01-Intro/Bogota.jpeg");
  print(img.width);
  print(img.height);
  img.loadPixels();
  for(int i = 0; i< img.height*img.width; i++){
    float r = red(img.pixels[i]);
    float g = green(img.pixels[i]);
    float b = blue(img.pixels[i]);
    color c = color(255-r,255-g,255-b);
    img.pixels[i] = c;
  }
  img.updatePixels();
  size(1500, 1000);
}

void draw() {
  image(img, 0, 0);
  image(img2, 0, 500);
}
