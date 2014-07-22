/* @pjs preload = "Mario.jpg"; */
/* @pjs preload = "SuperMarioGalaxy.png"; */
/* @pjs preload = "Google.png"; */

PImage img1, img2, img3;
int rand_x, rand_y;

void setup() {
  background(255);
  img1 = loadImage("Mario.jpg");
  img2 = loadImage("SuperMarioGalaxy.png");
  img3 = loadImage("Google.png");
  size(img.width, img.height);
}

void draw() {
  drawImage(img1);
  drawImage(img2);
  drawImage(img3);
}

void drawImage(image) {
  for (int i = 0; i < 500; i ++){
    rand_x = int(random(0, 600));
    rand_y = int(random(0, 600));
    //image(img, 0, 0);
    color c = image.get(rand_x, rand_y);
    //print(c);
    fill(c);
    noStroke();
    ellipseMode(CENTER);
    ellipse(rand_x, rand_y, 15, 15);
  }
}
