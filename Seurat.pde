PImage img;
int rand_x, rand_y;

void setup() {
  size(600, 600);
  background(255);
  img = loadImage("C:\\Users\\scamper\\Documents\\Processing\\Seurat\\Mario.jpg"); 
}

void draw() {
  rand_x = int(random(0, 600));
  rand_y = int(random(0, 600));
  //image(img, 0, 0);
  color c = img.get(rand_x, rand_y);
  //print(c);
  fill(c);
  noStroke();
  ellipseMode(CENTER);
  ellipse(rand_x, rand_y, 20, 20);
}
