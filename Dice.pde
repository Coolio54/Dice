  int totaldice = 0;
        
  void setup()
  {
      size(600, 600);
      noLoop();
  }
  void draw()
  {
      background(50,50,50);
      totaldice = 0;
      for (int j = 0; j < 550; j = j + 50) {
        for (int i = 0; i < 550; i = i + 50) { 
          Die bob = new Die(j, i); 
          bob.roll();
          bob.show();
          totaldice = bob.numDots + totaldice;
      }
      }
      fill(255);
      textSize(22);
      text("Total Roll:" + totaldice, 30, 600);
  }
  void mousePressed() 
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY;
      int numDots;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
          numDots = (int)(Math.random() * 6) + 1;
      }
      void show()
      {
          fill(255);
          stroke(0);
          rect(myX, myY, 65, 65, 10);
          if (numDots == 1) {
            ellipse(myX + 24, myY + 24, 7, 7);
          }
          if (numDots == 2) {
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 36, myY + 36, 7, 7);
          }
          if (numDots == 3) {
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 24, myY + 24, 7, 7);
            ellipse(myX + 36, myY + 36, 7, 7);
          }
          if (numDots == 4) {
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 36, myY + 12, 7, 7);
            ellipse(myX + 12, myY + 36, 7, 7);
            ellipse(myX + 36, myY + 36, 7, 7);
          }
          if (numDots == 5) {
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 36, myY + 12, 7, 7);
            ellipse(myX + 24, myY + 24, 7, 7);
            ellipse(myX + 12, myY + 36, 7, 7);
            ellipse(myX + 36, myY + 36, 7, 7);
          }
          if (numDots == 6) {
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 36, myY + 12, 7, 7);
            ellipse(myX + 12, myY + 24, 7, 7);
            ellipse(myX + 36, myY + 24, 7, 7);
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 36, myY + 36, 7, 7);
          }
      }
  }
