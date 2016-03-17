ArrayList<Ball> balls = new ArrayList<Ball>();

// moving rectangle data
float rectangleX;
float rectangleY;
float rectangleWidth;
float rectangleHeight;
float radius = 20;

void setup()
{
 size(400,400);
 background(0);
 rectMode(CENTER);
 
 rectangleX = width/2;
 rectangleY = height/2;
 rectangleWidth = 50;
 rectangleHeight = 50;
}

void draw()
{
  background(0);  
  
  // move down
  if(keyCode == 40)
  {
    if(rectangleY >= height-rectangleHeight/2)
    {
      rectangleY = height-rectangleHeight/2;
    }
    else
    {
      rectangleY += 5;
    }
  }
  
  // move up
  if(keyCode == 38)
  {
    if(rectangleY <= 0+rectangleHeight/2)
    {
      rectangleY = 0+rectangleHeight/2;
    }
    else
    {
      rectangleY -= 5;
    }
  }
  
  // move left
  if(keyCode == 37)
  {
    if(rectangleX <= 0+rectangleWidth/2)
    {
      rectangleX = 0+rectangleWidth/2-1;
    }
    else
    {
      rectangleX -= 5;
    }
  }
  
  // move right
  if(keyCode == 39)
  {
    if(rectangleX >= width-rectangleWidth/2)
    {
       rectangleX = width-rectangleWidth/2; 
    }
    else
    {
      rectangleX += 5;
    }
  }
  
  rect(rectangleX, rectangleY, rectangleWidth, rectangleHeight);
  
  
 // draw all the balls again at the start... & make sure they fall
 for(int i = 0; i < balls.size(); i++)
 {
    balls.get(i).display();
    balls.get(i).fall();
    if(balls.get(i).isColliding(rectangleX, rectangleY))
    {
     println("collision detected"); 
     fill(255,0,0);
     rect(rectangleX, rectangleY, rectangleWidth, rectangleHeight);
    }
 }
 
 
}

void mousePressed()
{
   fill(255);
   //noStroke();
   balls.add(new Ball(mouseX, mouseY, radius, rectangleX, rectangleY, rectangleWidth, rectangleHeight));
   int lastBall = balls.size()-1;
   balls.get(lastBall).display();
   balls.get(lastBall).fall();
}


class Ball
{
 // data
   float circleX;
   float circleY;
   float radius;
   float rectangleX;
   float rectangleY;
   float rectangleWidth;
   float rectangleHeight;
   
   
 // constructor
 Ball(
   float _circleX,
   float _circleY,
   float _radius,
   float _rectangleX,
   float _rectangleY,
   float _rectangleWidth,
   float _rectangleHeight)
 {
   circleX = _circleX;
   circleY = _circleY;
   radius = _radius;
   rectangleX = _rectangleX;
   rectangleY = _rectangleY;
   rectangleWidth = _rectangleWidth;
   rectangleHeight = _rectangleHeight;
 }
 
 // methods
 
 void display()
 {
   ellipseMode(CENTER);
   ellipse(circleX, circleY, radius*2, radius*2);
 }
 
 void fall()
 {
   circleY += 5;
   if(circleY >= height)
   {
     circleY = 0;
   }
 }
 
  boolean isColliding(float _rectangleX, float _rectangleY)
  {
    float circleDistanceX = abs(circleX - _rectangleX - rectangleWidth/2);
    float circleDistanceY = abs(circleY - _rectangleY - rectangleHeight/2);
   
    if (circleDistanceX > (rectangleWidth/2 + radius)) { return false; }
    if (circleDistanceY > (rectangleHeight/2 + radius)) { return false; }
   
    if (circleDistanceX <= (rectangleWidth/2)) { return true; }
    if (circleDistanceY <= (rectangleHeight/2)) { return true; }
   
    float cornerDistance_sq = pow(circleDistanceX - rectangleWidth/2, 2) +
                         pow(circleDistanceY - rectangleHeight/2, 2);
   
    return (cornerDistance_sq <= pow(radius,2));
  }
 
 
}