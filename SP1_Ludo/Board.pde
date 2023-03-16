class Board {
  color white, yellow, turquoise, red, green;
  int squareSize;
  
  Board() {
    white = color(255);
    yellow = color(255, 255, 0);
    turquoise = color(0, 255, 255);
    red = color(255, 0, 0);
    green = color(0, 255, 0);
    squareSize = width / 9;
  }

void draw() {
  strokeWeight(2);
 
  int squareSize = width/9;
 
 // forloops for making 9*9 squares
 for (int i = 0; i < 9; i++) {
    for (int j = 0; j < 9; j++) {
      fill(white);
      rect(i * squareSize, j * squareSize, squareSize, squareSize);
    }
  }
  
  // yellow squares on line 2(left to right)
  fill(yellow);
  rect(4 * squareSize, squareSize, squareSize, squareSize);
  rect(5 * squareSize, squareSize, squareSize, squareSize);
  
  // yellow square on line 3(left to right)
  fill(yellow);
  rect(4 * squareSize, 2 * squareSize, squareSize, squareSize);
 
  // yellow square and turquise square on line 4(left to right)
  fill(turquoise); 
  rect(squareSize, 3 * squareSize, squareSize, squareSize);
  fill(yellow);
  rect(4 * squareSize, 3 * squareSize, squareSize, squareSize);

  //turquise squares, random color square and green square on line 5 (left to right)
  fill(turquoise);
  rect(squareSize, 4 * squareSize, squareSize, squareSize);
  rect(2 * squareSize, 4 * squareSize, squareSize, squareSize);
  rect(3 * squareSize, 4 *squareSize, squareSize, squareSize);
  float middleT = random(255);
  float middleY = random(255);
  float middleR = random(255);
  float middleG = random(255);
  fill(middleT, middleY, middleR, middleG); // random color
  rect(4 * squareSize, 4 *squareSize, squareSize, squareSize); // middle square
  fill(green);
  rect(5 * squareSize, 4 * squareSize, squareSize, squareSize);
  rect(6 * squareSize, 4 * squareSize, squareSize, squareSize);
  rect(7 * squareSize, 4 * squareSize, squareSize, squareSize);
 
  // green and red square on line 6 (left to right)
  fill(red);
  rect(4 * squareSize, 5 *squareSize, squareSize, squareSize);
  fill(green);
  rect(7 * squareSize, 5 * squareSize, squareSize, squareSize);
 
  // red square on line 7 (left to right)
  fill(red);
  rect(4 * squareSize, 6 *squareSize, squareSize, squareSize);
 
  // red squares on line 8 (left to right)
  fill(red);
  rect(3 * squareSize, 7 *squareSize, squareSize, squareSize);
  rect(4 * squareSize, 7 *squareSize, squareSize, squareSize);
  }
}
