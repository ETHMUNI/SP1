class Pieces {
  boolean overEllipse;
  boolean unlocked;
  
  float xOffset; 
  float yOffset; 
  
  int pieceSize;
  
  float[] turqPiecesX;
  float[] turqPiecesY;
  
  color white, yellow, turquoise, red, green;

Pieces() {
  overEllipse = false;
  unlocked = false;
  xOffset = 0.0; 
  yOffset = 0.0; 
  pieceSize = 20;
  turqPiecesX = new float[] {75, 125, 125, 75};
  turqPiecesY = new float[] {75, 75, 125, 125};
  white = color(255);
  yellow = color(255, 255, 0);
  turquoise = color(0, 255, 255);
  red = color(255, 0, 0);
  green = color(0, 255, 0);
  }
  void draw() {
  
  // draw turquise pieces
  for(int i = 0; i < turqPiecesX.length; i++) {
   
    fill(turquoise);
      // test if the cursor is over the turqiuse ellipses 
    if (mouseX > turqPiecesX[0] - pieceSize && mouseX < turqPiecesX[0] + pieceSize) {
        overEllipse = true; 
      } else {
        overEllipse = false;
      }
      ellipse(turqPiecesX[i], turqPiecesY[i], pieceSize, pieceSize);
    
  }
  
  
  // yellow pieces
  fill(yellow);
  ellipse(475, 75, pieceSize, pieceSize); // left top piece
  ellipse(525, 75, pieceSize, pieceSize); // right top piece
  ellipse(525, 125, pieceSize, pieceSize); // right bottom piece
  ellipse(475, 125, pieceSize, pieceSize); // left bottom piece
 
  // red pieces
  fill(red);
  ellipse(75, 475, pieceSize, pieceSize); // left top piece
  ellipse(125, 475, pieceSize, pieceSize); // right top piece
  ellipse(125, 525, pieceSize, pieceSize); // right bottom piece
  ellipse(75, 525, pieceSize, pieceSize); // left bottom piece
 
  // green pieces
  fill(green);
  ellipse(475, 475, pieceSize, pieceSize); // left top piece
  ellipse(525, 475, pieceSize, pieceSize); // right top piece
  ellipse(525, 525, pieceSize, pieceSize); // right bottom piece
  ellipse(475, 525, pieceSize, pieceSize); // left bottom piece
}

//If mouse is over the ellipse piece then unlocked is true
  void mousePressed() {
  if(overEllipse) {
    unlocked = true;
  } else {
    unlocked = false;
  }
  xOffset = mouseX-turqPiecesX[0]; 
  yOffset = mouseY-turqPiecesY[0]; 
}

// if the piece is unlocked then you can drag the piece
void mouseDragged() {
  if(unlocked) {
    turqPiecesX[0] = mouseX-xOffset; 
    turqPiecesY[0] = mouseY-yOffset;
    }
  }

// when mouse is releasing a piece, the piece is going to be locked in it's current posistion
  void mouseReleased() {
  unlocked = false;
    }
}
