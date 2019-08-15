
// this function allows us to change the SIZE of our brush
void sizeSelect() {
  rectMode(CORNER);
  noStroke();
  fill(200);
  rect(width/15, 0, width/15, height);



  fill(255);//                                                                 \\
  ellipse(width/10, width/40, width/30, width/30);//                            ||
  fill(0);//                                                                    ||
  ellipse(width/10, width/40, 5, 5);//                                          ||=== This is the code needed to
  if (dist(mouseX, mouseY, width/10, width/40)<width/60 && mousePressed) {//    ||=== change our brush SIZE to 5
    brushSize = 5;//                                                            ||
    sizeSelect = false;//                                                       ||
  }//                                                                          //



  fill(255);//                                                                    \\
  ellipse(width/10, width/13.333, width/30, width/30);//                           ||
  fill(0);//                                                                       ||
  ellipse(width/10, width/13.333, 10, 10);//                                       ||=== This is the code needed to
  if (dist(mouseX, mouseY, width/10, width/13.333)<width/60 && mousePressed) {//   ||=== change our brush SIZE to 10
    brushSize = 10;//                                                              ||
    sizeSelect = false;//                                                          ||
  }//                                                                             //



  fill(255);//                                                               \\
  ellipse(width/10, width/8, width/30, width/30);//                           ||
  fill(0);//                                                                  ||
  ellipse(width/10, width/8, 25, 25);//                                       ||=== This is the code needed to
  if (dist(mouseX, mouseY, width/10, width/8)<width/60 && mousePressed) {//   ||=== change our brush SIZE to 25
    brushSize = 25;//                                                         ||
    sizeSelect = false;//                                                     ||
  }//                                                                        //
  
  
  
  //ADD CODE HERE TO CHANGE BRUSH SIZE TO DIFFERENT SIZES (AT LEAST 5 MORE!!!)
  
  
  
}




void colourSelect() {
  rectMode(CORNER);
  noStroke();
  fill(200);
  rect(width/15, 0, width/15, height);



  fill(255);//                                                                \\
  ellipse(width/10, width/40, width/30, width/30);//                           ||
  if (dist(mouseX, mouseY, width/10, width/40)<width/60 && mousePressed) {//   ||
    red = 255;//                                                               ||=== This is the code needed to
    green = 255;//                                                             ||=== change our COLOUR to WHITE
    blue = 255;//                                                              ||
    colourSelect = false;//                                                    ||
  }//                                                                         //



  fill(0);//                                                                      \\
  ellipse(width/10, width/13.333, width/30, width/30);//                           ||
  if (dist(mouseX, mouseY, width/10, width/13.333)<width/60 && mousePressed) {//   ||
    red = 0;//                                                                     ||=== This is the code needed to
    green = 0;//                                                                   ||=== change our COLOUR to BLACK
    blue = 0;//                                                                    ||
    colourSelect = false;//                                                        ||
  }//                                                                             //



  fill(255, 0, 0);//                                                         \\
  ellipse(width/10, width/8, width/30, width/30);//                           ||
  if (dist(mouseX, mouseY, width/10, width/8)<width/60 && mousePressed) {//   ||
    red = 255;//                                                              ||=== This is the code needed to
    green = 0;//                                                              ||=== change our COLOUR to RED
    blue = 0;//                                                               ||
    colourSelect = false;//                                                   ||
  }//                                                                        //
  
  
  
  //ADD CODE HERE TO CHANGE OUR BRUSH TO DIFFERENT COLOURS (AT LEAST 5 MORE!!!)
  
  
  
}




// this function allows us to change the SHAPE of our brush
void shapeSelect() {
  rectMode(CORNER);
  noStroke();
  fill(200);
  rect(width/15, 0, width/15, height);



  fill(255);//                                                               \\
  ellipse(width/10, width/40, width/30, width/30);//                          ||
  fill(0);//                                                                  ||
  ellipse(width/10, width/40, width/60, width/60);//                          ||=== This is the code needed to change
  if (dist(mouseX, mouseY, width/10, width/40)<width/60 && mousePressed) {//  ||=== our brush into a CIRCLE SHAPE
    shape = 0;// 0 = CIRCLE                                                   || 
    shapeSelect = false;//                                                    ||
  }//                                                                        //



  fill(255);//                                                                   \\
  ellipse(width/10, width/13.333, width/30, width/30);//                          ||
  fill(0);//                                                                      ||
  rectMode(CENTER);//                                                             ||
  rect(width/10, width/13.333, width/60, width/60);//                             ||=== This is the code needed to change
  if (dist(mouseX, mouseY, width/10, width/13.333)<width/60 && mousePressed) {//  ||=== our brush into a SQUARE SHAPE
    shape = 1;// 1 = SQUARE                                                       ||
    shapeSelect = false;//                                                        ||
  }//                                                                            //
  
  
  
  //ADD CODE HERE TO CHANGE BRUSH SHAPE INTO TRIANGLE (shape = 2)
  
  
  
}
