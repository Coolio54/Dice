int totaldice = 0;
        
void setup()
{
    size(600, 600);
    noLoop();
}

void draw()
{
    background(50, 50, 50);
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
    
    text("Total Roll: " + totaldice, 30, 580); 
}

void mousePressed() 
{
    redraw();
}

class Die // models one single dice cube
{
    int myX, myY;
    int numDots;
    
    Die(int x, int y) // constructor
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
  
        fill(100, 200, 255); 
        stroke(0);
        rect(myX, myY, 45, 45, 8); 
        
        fill(10, 20, 50); 
        
        if (numDots == 1) {
            ellipse(myX + 22, myY + 22, 7, 7);
        }
        if (numDots == 2) {
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 32, myY + 32, 7, 7);
        }
        if (numDots == 3) {
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 22, myY + 22, 7, 7);
            ellipse(myX + 32, myY + 32, 7, 7);
        }
        if (numDots == 4) {
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 32, myY + 12, 7, 7);
            ellipse(myX + 12, myY + 32, 7, 7);
            ellipse(myX + 32, myY + 32, 7, 7);
        }
        if (numDots == 5) {
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 32, myY + 12, 7, 7);
            ellipse(myX + 22, myY + 22, 7, 7);
            ellipse(myX + 12, myY + 32, 7, 7);
            ellipse(myX + 32, myY + 32, 7, 7);
        }
        if (numDots == 6) {
            ellipse(myX + 12, myY + 12, 7, 7);
            ellipse(myX + 32, myY + 12, 7, 7);
            ellipse(myX + 12, myY + 22, 7, 7);
            ellipse(myX + 32, myY + 22, 7, 7);
            ellipse(myX + 12, myY + 32, 7, 7);
            ellipse(myX + 32, myY + 32, 7, 7);
        }
    }
}
