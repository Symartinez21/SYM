/* @pjs preload="cloud.png"; */
PImage img;
float offset = 0;
float easing = 0.05;

void setup() {
  noStroke();
  size(900, 960);
  img = loadImage("cloud.png");  // Load an image into the program 
}

void draw(){
  background(#3E5C8B);
beginShape() ; //moon
fill(#F0ECC6);
vertex(30, 20);
bezierVertex(80, 0, 80, 75, 30, 75);
bezierVertex(50, 80, 60, 25, 30, 20);
endShape();
  fill(#11155D);
  strokeWeight(2);
  beginShape(); //building
  vertex(0, 409);
  vertex(174, 409);
  vertex(174, 210);
  vertex(503, 210);
  vertex(503, 497);
  vertex(747, 497);
  vertex(747, 53);
  vertex(960, 51);
  vertex(960, 900);
  vertex(0, 900);
  vertex(0, 409);
  endShape(CLOSE);

 rectMode(CENTER);
 if ((mouseX > 40) && (mouseX < 80) &&
    (mouseY > 20) && (mouseY < 80)) {
 fill(#F0ECC6); //yellow light
rect(221, 696, 36, 54);
 rect(461, 542, 36, 54);
  rect(794, 692, 36, 54);
 rect(794, 542, 36, 54);
  rect(546, 759, 36, 54);
 rect(794, 390, 36, 54);
 rect(546, 596, 36, 54);
 rect(887, 390, 36, 54);
rect(887, 692, 36, 54);
 } else {
    fill(#F0C6D1); //pink light
  }
   rect(461, 759, 36, 54);
   rect(105, 469, 36, 54);
   rect(221, 382, 36, 54);
 rect(105, 584, 36, 54);
 rect(221, 286, 36, 54);
  rect(546, 849, 36, 54);
  rect(794, 259, 36, 54);
rect(794, 113, 36, 54);
rect(887, 113, 36, 54);

image(img, 350, 400);  // Display at full opacity
  float dx = (mouseX-img.width/2) - offset;
  offset += dx * easing; 
  tint(255, 127);  // Display at half opacity
  image(img, offset, 0);
  
}
