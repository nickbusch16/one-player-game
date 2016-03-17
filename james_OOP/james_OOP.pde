int gameOver = 0;
int score = 0;
int boxSpeed = 4; 
int boxX, boxY = 1; 
int boxWidth = 20; 
int boxHeight = 20;

leftCircle myCircle1;
leftCircle myCircle2; // Two objects!
rightCircle myCircle3;
rightCircle myCircle4;
topCircle myCircle5;
topCircle myCircle6;
bottomCircle myCircle7;
bottomCircle myCircle8;

void setup() {
  size(500, 500);
  // Arguments go inside the parentheses when the object is constructed.  
  myCircle1 = new leftCircle(color(51), 0, 100, 1); 
  myCircle2 = new leftCircle(color(151), 0, 200, 2);
  myCircle3 = new rightCircle(color(51), 0, 100, 3); 
  myCircle4 = new rightCircle(color(151), 0, 200, 4);
  myCircle5 = new topCircle(color(51), 200, 0, 5); 
  myCircle6 = new topCircle(color(151), 100, 0, 6);
  myCircle7 = new bottomCircle(color(51), 200, 0, 7); 
  myCircle8 = new bottomCircle(color(151), 100, 0, 8);
  
  rectMode(CENTER);
  size(500, 500);
  boxX = width/2;
  boxY = height/2;
  frameRate(60);
}

void draw() {
  background(255);
  myCircle1.move();
  myCircle1.display();
  myCircle2.move();
  myCircle2.display();
  myCircle3.move();
  myCircle3.display();
  myCircle4.move();
  myCircle4.display();
  myCircle5.move();
  myCircle5.display();
  myCircle6.move();
  myCircle6.display();
  myCircle7.move();
  myCircle7.display();
  myCircle8.move();
  myCircle8.display();
  if(gameOver == 0)  // run this chunk while the game is still going
  {
    
    fill(0);
    textSize(20);
    text("Score: "+score, width - 100, 30);
  }
  
  fill(0);
  noStroke();
  rect(boxX,boxY,boxWidth,boxHeight);
  
  if (keyCode == 39)
  {
    fill(0);
    noStroke();
   
    boxX += boxSpeed;
  
  }
  
  // left arrow, move "hole"
  if (keyCode == 37)
  {
    fill(0);
    noStroke();
    
    boxX -= boxSpeed;
  }
    if (keyCode == 38)
  {
    fill(0);
    noStroke();
   
    boxY -= boxSpeed;
  }
    if (keyCode == 40)
  {
    fill(0);
    noStroke();
    
    boxY += boxSpeed;
  }
  // keep rectangular hole from going off screen.
   if(boxX <= (0+boxWidth/2))
   {
     boxX = boxWidth/2; 
   }
 
   if(boxX >= (width-boxWidth/2))
   {
     boxX = width - boxWidth/2; 
   }
   
   if(boxX <= (0+boxWidth/2))
   {
     boxX = boxWidth/2; 
   }
   
   if(boxY >= (height-boxWidth/2))
   {
     boxY = height - boxWidth/2; 
   }
  
}

// Even though there are multiple objects, only  one class is needed. 
// No matter how many cookies you make, only one cookie cutter is needed.
class leftCircle 
{ 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // The Constructor is defined with parameters.  
  leftCircle(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() 
  {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos, ypos, 30, 30);
  }

  void move() 
  {
    xpos = xpos + xspeed;
    if (xpos > width) 
    {
      xpos = 0;
      ypos = int(random(0, width));
      score++;
    }
  }
}
class rightCircle
{ 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // The Constructor is defined with parameters.  
  rightCircle(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() 
  {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos, ypos, 30, 30);
    
  }

  void move() 
  {
    xpos = xpos - xspeed;
    if (xpos < 0) 
    {
      xpos = width;
      ypos = int(random(0, width));
      score++;
    }
  }
}
class topCircle 
{ 
  color c;
  float xpos;
  float ypos;
  float yspeed;

  // The Constructor is defined with parameters.  
  topCircle(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    yspeed = tempXspeed;
  }

  void display() 
  {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos, ypos, 30, 30);
  }

  void move() 
  {
    ypos = ypos + yspeed;
    if (ypos > width) 
    {
      ypos = 0;
      xpos = int(random(0, height));
      score++;
    }
  }
}
class bottomCircle 
{ 
  color c;
  float xpos;
  float ypos;
  float yspeed;

  // The Constructor is defined with parameters.  
  bottomCircle(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    yspeed = tempXspeed;
  }

  void display() 
  {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos, ypos, 30, 30);
  }

  void move() 
  {
    ypos = ypos - yspeed;
    if (ypos < 0) 
    {
      ypos = width;
      xpos = int(random(0, height));
      score++;
    }
  }
}