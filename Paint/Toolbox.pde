void toolBox() {
  rectMode(CORNER);
  noStroke();
  fill(150);
  rect(0, 0, width/15, height);

  //colour select
  fill(red, green, blue);
  ellipse(width/30, width/40, width/30, width/30);
  fill(0);
  textSize(width/150);
  textAlign(CENTER, TOP);
  text("COLOUR", width/30, width/20);
  if (dist(mouseX, mouseY, width/30, width/40)<width/60 && mousePressed) {
    sizeSelect=false;
    shapeSelect=false;
    eraser=false;
    colourSelect=true;
  }

  //brush size select
  fill(255);
  ellipse(width/30, width/10.9091, width/30, width/30);
  fill(0);
  ellipse(width/30, width/10.9091, width/40, width/40);
  textSize(width/150);
  fill(255);
  textAlign(CENTER, CENTER);
  text(int(brushSize), width/30, width/10.9091);
  fill(0);
  textAlign(CENTER, TOP);
  text("BRUSH SIZE", width/30, width/8.5714);
  if (dist(mouseX, mouseY, width/30, width/10.9091)<width/60 && mousePressed) {
    colourSelect=false;
    shapeSelect=false;
    sizeSelect=true;
  }

  //brush shape select
  fill(255);
  ellipse(width/30, width/6.3158, width/30, width/30);
  fill(0);
  if (shape == 0) {
    ellipse(width/30, width/6.3158, width/60, width/60);
  } else if (shape == 1) {
    rectMode(CENTER);
    rect(width/30, width/6.3158, width/60, width/60);
  } else if (shape == 2) {
    triangle(width/40, width/6, width/30, width/6.6667, width/24, width/6);
  } else {
    ellipse(width/30, width/6.3158, width/60, width/60);
  }
  fill(0);
  textSize(width/150);
  textAlign(CENTER, TOP);
  text("BRUSH SHAPE", width/30, width/5.45455);
  if (dist(mouseX, mouseY, width/30, width/6.3158)<width/60 && mousePressed) {
    colourSelect=false;
    sizeSelect=false;
    shapeSelect=true;
  }

  //eraser
  noStroke();
  if (eraser) {
    strokeWeight(3);
    stroke(255, 0, 0);
  }
  fill(255);
  ellipse(width/30, width/4.444, width/30, width/30);
  strokeWeight(1);
  stroke(0);
  ellipse(width/30, width/4.444, width/60, width/60);
  fill(0);
  textSize(width/150);
  textAlign(CENTER, TOP);
  text("ERASER", width/30, width/4);

  //clear canvas
  fill(255);
  ellipse(width/30, width/3.4286, width/30, width/30);
  fill(0);
  textSize(width/150);
  textAlign(CENTER, TOP);
  text("CLEAR CANVAS", width/30, width/3.1579);
  if (dist(mouseX, mouseY, width/30, width/3.4286)<width/60 && mousePressed) {
    sizeSelect=false;
    shapeSelect=false;
    colourSelect=false;
    eraser=false;
    background(255);
    save("background.png");
    background = loadImage("background.png");
    preview = true;
  }
}
