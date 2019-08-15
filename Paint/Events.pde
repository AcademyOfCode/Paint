void mouseReleased() {
  if (mouseX>width/6.667) {
    save("background.png");
    background = loadImage("background.png");
    preview = true;
  }

  if (dist(mouseX, mouseY, width/30, height/2.222)<50) {
    sizeSelect=false;
    shapeSelect=false;
    colourSelect=false;
    eraser = !eraser;
  }
}

void mouseWheel(MouseEvent event) {
  if (event.getCount()<0) {
    if (brushSize>=width/300) {
      brushSize-=event.getCount()*width/300;
    } else if (brushSize>=1) {
      brushSize-=event.getCount();
    }
  }
  if (event.getCount()>0) {
    if (brushSize>width/300) {
      brushSize-=event.getCount()*width/300;
    } else if (brushSize>1) {
      brushSize-=event.getCount();
    }
  }
}

void keyReleased() {
  if (key == ' ') {
    preview = false;
    pieceNumber++;
    String n = str(pieceNumber);
    String[] works = split(n, ' ');
    saveStrings("Works.txt", works);
    String name = "Masterpiece"+n+".png";
    image(background, 0, 0);
    noStroke();
    fill(255);
    rect(0,0,(width/7.5)+1,height);
    save(name);
    preview = true;
  }
}
