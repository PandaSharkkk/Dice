void setup() {
  size(575, 550);
  noLoop();
  background(0, 0, 255);
  textSize(30);
  textAlign(CENTER);
}

int sum = 0;
Dice bob;
int counter = 0;

void draw() {
  background(0, 0, 255);
  for (int y = 25; y <= 500; y += 60){
    for (int x = 50; x <= 500; x += 60){
      bob = new Dice(x, y);
      counter += bob.rollNum;
      bob.show();
    }
  }
  
  fill(255);
  text("sum: " + counter, 125, 525);
  counter = 0;
  
  
}

void mousePressed() {
  redraw();
}



class Dice {
  int myX, myY, rollNum;
  
  Dice(int x, int y) {
    myX = x;
    myY = y;
    roll();
  }

  void roll(){
    rollNum = (int)(Math.random()*6) + 1;
  }
  
  void show() {
    fill(255, 255, 255);
    rect(myX, myY, 50, 50);
    fill(0, 0, 0);
    
    if (rollNum == 1)
      ellipse(myX + 25, myY + 25, 10, 10);
    if (rollNum == 2){
      ellipse (myX + 35, myY + 35, 10, 10);
      ellipse(myX + 15, myY + 15, 10, 10);
    }
    if (rollNum == 3){
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
    }
    if (rollNum == 4){
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
    }
    if (rollNum == 5){
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);   
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    if (rollNum == 6){
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);     
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
    }
      
      
  }
}
