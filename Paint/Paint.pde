float brushSize;
float red, green, blue;
int shape=0;
boolean colourSelect = false;
boolean sizeSelect = false;
boolean shapeSelect = false;
boolean preview = true;
boolean eraser = false;
PImage background;
String[] works;
int pieceNumber;

void setup() {
  size(3000, 1500); //MUST BE IN THE RATIO 2:1
  background(255);
  save("background.png");
  background = loadImage("background.png");
  works = loadStrings("Works.txt");
  pieceNumber = int(works[0]);
  brushSize = width/30;
}

void draw() {
  noStroke();
  if (mousePressed && mouseX>width/6.667) {
    preview = false;
    paint();
  } else {
    image(background, 0, 0);
  }
  if (preview) {
    preview();
  }
  toolBox();
  if (colourSelect) {
    colourSelect();
  } else if (sizeSelect) {
    sizeSelect();
  } else if (shapeSelect) {
    shapeSelect();
  } else {
    fill(255);
    noStroke();
    rectMode(CORNER);
    rect(width/15, 0, width/15, height);
  }
  strokeWeight(1);
  stroke(0);
  line(width/15, 0, width/15, height);
  line(width/7.5, 0, width/7.5, height);
}

void paint() {
  if (mouseButton == LEFT) {
    fill(red, green, blue);
    if (eraser) {
      fill(255);
    }
    noStroke();
    if (shape == 0) {
      ellipse(mouseX, mouseY, brushSize, brushSize);
    } else if (shape == 1) {
      rectMode(CENTER);
      rect(mouseX, mouseY, brushSize, brushSize);
    } else if (shape == 2) {
      triangle(mouseX-brushSize/2, mouseY+brushSize/2, mouseX, mouseY-brushSize/2, mouseX+brushSize/2, mouseY+brushSize/2);
    } else {
      shape = 0;
    }
  }
}

void preview() {
  noStroke();
  fill(red, green, blue);
  if (eraser) {
    strokeWeight(1);
    stroke(0);
    fill(255);
  }
  if (shape == 0) {
    ellipse(mouseX, mouseY, brushSize, brushSize);
  } else if (shape == 1) {
    rectMode(CENTER);
    rect(mouseX, mouseY, brushSize, brushSize);
  } else if (shape == 2) {
    triangle(mouseX-brushSize/2, mouseY+brushSize/2, mouseX, mouseY-brushSize/2, mouseX+brushSize/2, mouseY+brushSize/2);
  } else {
    shape = 0;
  }
}
