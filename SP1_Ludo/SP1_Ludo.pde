/* Ludo Game
* Note: Can only get one piece to move with the mouse - Code incomplete
*/

char keyPress = 'd';

// variable declaration
Pieces pieces;
Board board;
Start start;

void setup() {
  size(600, 600);
  pieces = new Pieces();
  board = new Board();
  start = new Start();
}

void draw() {
  board.draw();
  start.draw();
  pieces.draw();
}

void mousePressed() {
  pieces.mousePressed(); // call the mousePressed() method of the Pieces instance
}

void mouseDragged() {
  pieces.mouseDragged(); // call the mouseDragged() method of the Pieces instance
}

void mouseReleased() {
  pieces.mouseReleased(); // call the mouseReleased() method of the Pieces instance
}

// simulating a dice - Giving a random number between 1 to 6
void dice() {
  float randomNumber = random(1, 7);
  int convertedRandomNumber = int(randomNumber); // converts randomNumber to an integer 
  println("Move your piece " + convertedRandomNumber + " square(s) forward" );
 }
 
// Everytime the key 'd' is pressed it "rolls the dice" in the console
 void keyPressed() {
   if(keyPress == 'd') {
     dice();
   }
 }
