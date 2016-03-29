PImage bg;
int y;
int keyPresses;

void setup() {
size(640, 360);
//background image must be same size as parameters.
bg = loadImage("http://cache4.asset-cache.net/xd/491968778.jpg?v=1&c=IWSAsset&k=2&d=DF8D445051B40C743F37857AAD8FD6BADD9BE2D9A1DB104C06D48456890DC1699396529B3C57E914");//start screen
bg = loadImage("file:///Users/user/Desktop/Untitled-2.jpg");//first intro slide
bg = loadImage("file:///Users/user/Desktop/Untitled-1.jpg");//second intro slide
bg = loadImage("file:///Users/user/Desktop/First%20Choice.jpg");//The first choice
bg = loadImage("file:///Users/user/Desktop/Second%20choice.jpg");//choice A
bg = loadImage("file:///Users/user/Desktop/First%20GAMEOVER%20Screen.jpg");// First game over, choice B
bg = loadImage("file:///Users/user/Desktop/ankle%20transition.jpg");
bg = loadImage("file:///Users/user/Desktop/ankleChoice.jpg");
bg = loadImage("file:///Users/user/Desktop/PassOut2.jpg");
bg = loadImage("file:///Users/user/Desktop/wakeUp1.jpg");
bg = loadImage("file:///Users/user/Desktop/arnoldEncounter.jpg");
bg = loadImage("file:///Users/user/Desktop/Choice4.jpg");
bg = loadImage("file:///Users/user/Desktop/ArnoldBeingTamed.jpg");
bg = loadImage("file:///Users/user/Desktop/gameOver2.jpg");
bg = loadImage("file:///Users/user/Desktop/whereAmI.jpg");
bg = loadImage("file:///Users/user/Desktop/fallingOver.jpg");
bg = loadImage("file:///Users/user/Desktop/ExplanationP1.jpg");
bg = loadImage("file:///Users/user/Desktop/explanationP2.jpg");
bg = loadImage("file:///Users/user/Desktop/dublinArnold.jpg");
bg = loadImage("file:///Users/user/Desktop/aBeginningToAnEnd.jpg");
bg = loadImage("file:///Users/user/Desktop/toBeContinued.jpg");

toBeContinued();
aBeginningToAnEnd();
dublinArnold();
explanationP2();
explanationP1();
fallingOver();
whereAmI();
gameOver2();
arnoldBeingTamed();
choice4();
arnoldEncounter();
wakeUp1();
passOut();
ankleChoice();
ankleTrans();
gameOver1();
choiceA();
firstChoice();
thirdSlide();
secondSlide();
introScreen();
}

void draw() {
 // background(bg);
  if(key == '3')
  {
   thirdSlide(); 
  }
  
  if(key == '1')
  {
   introScreen(); 
  }
  
  if(key == '2')
  {
    secondSlide();
  }
  if(key == '4')
  {
    firstChoice();
  }
  stroke(226, 204, 0);
  
  y++;
  if (y > height) {
    y = 0;
  }
}


void keyPressed()
{
 if(keyCode == 39) 
{
  keyPresses++;
    println("Number of key presses: " + keyPresses);
    if(keyPresses == 1)
    {
      secondSlide();
    }
    if(keyPresses == 2)
    {
      thirdSlide();
    }
    if(keyPresses == 3)
    {
      firstChoice();
    }
    if(keyPresses == 6)
    {
     ankleChoice(); 
    }
    if(keyPresses == 7)
    {
     arnoldEncounter(); 
    }
    if(keyPresses == 8)
    {
     choice4(); 
    }
   if(keyPresses ==   9)
   {
     explanationP2();
   }
   if(keyPresses == 10)
   {
    aBeginningToAnEnd(); 
   }
   if(keyPresses == 11)
   {
    toBeContinued(); 
   }
   
}
   {
   if(key == 'a')
   {
     keyPresses++;
       println("Number of key presses: " + keyPresses);
       if(keyPresses == 4)
       {
         choiceA();
       }
       if(keyPresses == 5)
       {
           ankleTrans();    
   }
   if(keyPresses == 9)
   {
     gameOver2();
   }
   if(keyPresses == 7)
   {
    whereAmI(); 
   }
   if(keyPresses == 8)
      {
       explanationP1(); 
      }
      if(keyPresses == 10)
      {
       toBeContinued(); 
      }
   }
   }
   {
    if(key == 'b')
   {
     keyPresses++;
      println("Number of key presses: " + keyPresses);
      if(keyPresses == 4)
      {
        gameOver1();
      }
      if(keyPresses == 5)
      {
       passOut();     
      }
      if(keyPresses == 6)
      {
       wakeUp1(); 
      }
      if(keyPresses == 9)
      {
       arnoldBeingTamed(); 
      }
      if(keyPresses == 7)
      {
        fallingOver();
      } 
      if(keyPresses == 8)
      {
       explanationP1(); 
      }
       if(keyPresses ==   10)
    {
     dublinArnold(); 
    }
     if(keyPresses == 11)
      {
       toBeContinued(); 
      }
   }
     }
}

void introScreen()
{
  bg = loadImage("http://cache4.asset-cache.net/xd/491968778.jpg?v=1&c=IWSAsset&k=2&d=DF8D445051B40C743F37857AAD8FD6BADD9BE2D9A1DB104C06D48456890DC1699396529B3C57E914");
background(bg);
  PFont font;
  fill(0);
//how to create a font, however its not working for some reason.
font = createFont("Harrington-48.vlw", 48);
textFont(font);
text("Start",260, 180);
fill(0);
textSize(60);
 size(640, 360);
}
void secondSlide()
{
bg = loadImage("file:///Users/user/Desktop/Untitled-2.jpg");
background(bg);
}
void thirdSlide()
{
  bg=loadImage("file:///Users/user/Desktop/Untitled-1.jpg");
  background(bg);
  }
void firstChoice()
{
  bg = loadImage("file:///Users/user/Desktop/First%20Choice.jpg");
  background(bg);
  }
void choiceA()
{
 bg = loadImage("file:///Users/user/Desktop/Second%20choice.jpg");
 background(bg);
  }
void gameOver1()
{
  bg = loadImage("file:///Users/user/Desktop/First%20GAMEOVER%20Screen.jpg");
  background(bg);
  }
void ankleTrans()
{
  bg = loadImage("file:///Users/user/Desktop/ankle%20transition.jpg");
  background(bg);
  }
void ankleChoice()
{
  bg = loadImage("file:///Users/user/Desktop/ankleChoice.jpg");
  background(bg);
  }
void passOut()
{
  bg = loadImage("file:///Users/user/Desktop/PassOut2.jpg");
  background(bg);
}
void wakeUp1()
{
  bg = loadImage("file:///Users/user/Desktop/wakeUp1.jpg");
  background (bg);
}
void arnoldEncounter()
{
  bg = loadImage("file:///Users/user/Desktop/arnoldEncounter.jpg");
  background (bg);
}
void choice4()
{
  bg = loadImage("file:///Users/user/Desktop/Choice4.jpg");
  background(bg);
}
void arnoldBeingTamed()
{
  bg = loadImage("file:///Users/user/Desktop/ArnoldBeingTamed.jpg");
  background(bg);
}
void gameOver2()
{
  bg = loadImage("file:///Users/user/Desktop/gameOver2.jpg");
  background(bg);
}
void whereAmI()
{
  bg = loadImage("file:///Users/user/Desktop/whereAmI.jpg");
  background(bg);
}
void fallingOver()
{
  bg = loadImage("file:///Users/user/Desktop/fallingOver.jpg");
  background(bg);
}
void explanationP1()
{
 bg = loadImage("file:///Users/user/Desktop/ExplanationP1.jpg");
background(bg);
}
void explanationP2()
{
  bg = loadImage("file:///Users/user/Desktop/explanationP2.jpg");
  background(bg);
}
void dublinArnold()
{
 bg = loadImage("file:///Users/user/Desktop/dublinArnold.jpg");
background(bg); 
}
void aBeginningToAnEnd()
{
 bg = loadImage("file:///Users/user/Desktop/aBeginningToAnEnd.jpg"); 
 background(bg);
}
void toBeContinued()
{
 bg = loadImage("file:///Users/user/Desktop/toBeContinued.jpg");
 background(bg);
}
