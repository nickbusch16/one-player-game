ArrayList<Ball> balls = new ArrayList<Ball>();

// moving rectangle data
float rectangleX;
float rectangleY;
float rectangleWidth;
float rectangleHeight;

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
  
  // move left
  if(keyCode == 37)
  {
    if(rectangleX <= 0+rectangleWidth*2)
    {
      rectangleX = 0;
    }
    else
    {
      rectangleX -= 5;
    }
  }
  
  if(keyCode == 39)
  {
    if(rectangleX >= width-rectangleWidth*2)
    {
       rectangleX = width; 
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
 }
 
 
}

void mousePressed()
{
   fill(255);
   //noStroke();
   balls.add(new Ball(mouseX, mouseY, 20, 20, 20, 20, 20));
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
 
  boolean isCollidingCircleRectangle(
      float circleX,
      float circleY,
      float radius,
      float rectangleX,
      float rectangleY,
      float rectangleWidth,
      float rectangleHeight)
  {
    float circleDistanceX = abs(circleX - rectangleX - rectangleWidth/2);
    float circleDistanceY = abs(circleY - rectangleY - rectangleHeight/2);
   
    if (circleDistanceX > (rectangleWidth/2 + radius)) { return false; }
    if (circleDistanceY > (rectangleHeight/2 + radius)) { return false; }
   
    if (circleDistanceX <= (rectangleWidth/2)) { return true; }
    if (circleDistanceY <= (rectangleHeight/2)) { return true; }
   
    float cornerDistance_sq = pow(circleDistanceX - rectangleWidth/2, 2) +
                         pow(circleDistanceY - rectangleHeight/2, 2);
   
    return (cornerDistance_sq <= pow(radius,2));
  }
 
 
}