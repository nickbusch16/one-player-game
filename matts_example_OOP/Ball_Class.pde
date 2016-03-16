class Ball
{
 // data
   float circleX;
   float circleY;
   float radius;
   float rectangleX;
   float rectangleY;
   float rectangleWidth;
   float retangleHeight;
   
 // constructor
 Ball(
   float _circleX,
   float _circleY,
   float _radius,
   float _rectangleX,
   float _rectangleY,
   float _rectangleWidth,
   float _retangleHeight)
 {
   circleX = _circleX;
   circleY = _circleY;
   radius = _radius;
   rectangleX = _rectangleX;
   rectangleY = _rectangleY;
   rectangleWidth = _rectangleWidth;
   retangleHeight = _rectangleHeight;
 }
 
 // methods
 
 void display()
 {
   ellipseMode(CENTER);
   ellipse(circleX, circleY, radius*2, radius*2);
 }
 
 void fall()
 {
   
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