/* @pjs preload = "Mario.jpg"; */
/* @pjs preload = "SuperMarioGalaxy.png"; */
/* @pjs preload = "Google.png"; */

import controlP5.*;

ControlP5 Slider;

PImage img1, img2, img3;
int rand_x, rand_y;
int count = 0;
int Int;
float diameter;

void setup() {
  background(255);
  img1 = loadImage("Mario.jpg");
  img2 = loadImage("SuperMarioGalaxy.png");
  size(img1.width, img1.height + 100);
  Slider = new ControlP5(this);
  Slider.addSlider("Slider", 1, 30, 10, 20, img1.height + 20, img1.width - 40, 40);
}

void draw() {
  for (int i = 0; i < 10; i++){ //i < 10 here specifies the speed of the program: the program only draws to canvas AFTER draw loop has run
    rand_x = int(random(0, img1.width));
    rand_y = int(random(0, img1.height));
    //image(img, 0, 0);
    color c = img1.get(rand_x, rand_y);
    //print(c);
    fill(c);
    noStroke();
    ellipseMode(CENTER);
    ellipse(rand_x, rand_y, diameter, diameter);
    count++;
  }
//  if (count > 3000){  
//    PImage temp = img1;
//    img1 = img2;
//    img2 = temp;
//    size(img1.width, img1.height);
//    count = 0;
//  }
}


void controlEvent(ControlEvent theEvent) {  
  if(theEvent.isController()) { 
    if(theEvent.controller().name() == "Slider") {
      diameter = theEvent.controller().value();
      background(255);
    }
  }
}

