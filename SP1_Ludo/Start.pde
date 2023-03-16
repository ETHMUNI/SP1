class Start {
  int whiteSquareSize;
  int bigSquareSize;
  color white, yellow, turquoise, red, green;

Start() {
  whiteSquareSize = 100;
  bigSquareSize = 200;
  white = color(255);
  yellow = color(255, 255, 0);
  turquoise = color(0, 255, 255);
  red = color(255, 0, 0);
  green = color(0, 255, 0);
  }

void draw() {
   
// big turquise square
  fill(turquoise);
  rect(0, 0, bigSquareSize, bigSquareSize);
// big white square
  fill(white);
  rect(50, 50, whiteSquareSize, whiteSquareSize);
 
// big yellow square
  fill(yellow);
  rect(395, 0, bigSquareSize, bigSquareSize);
// big white square
  fill(white);
  rect(450, 50, whiteSquareSize, whiteSquareSize);
 
// big red square
  fill(red);
  rect(0, 395, bigSquareSize, bigSquareSize);
// big white square
  fill(white);
  rect(50, 450, whiteSquareSize, whiteSquareSize);
 
// big green square
  fill(green);
  rect(395, 395, bigSquareSize, bigSquareSize);
// big white square
  fill(white);
  rect(450, 450, whiteSquareSize, whiteSquareSize);
  }
}
