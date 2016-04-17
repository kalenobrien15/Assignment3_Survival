class GameScreen 
{
  int oppacity=255;
  // 0; Splash Screen
  // 1; Menu;
  // 2; Game Screen;
  // 3; GameOver screen;

  int gameScreen=2;
  int timer = 0;
  GameScreen()
  {
    timer = 0;
    //images
   oppacity = 255;
  } 

  void update()
    {
     
    if (gameScreen == 0) {
      splashScreen();
      oppacity-=0.8;
       timer+=1;
        if(timer>=500){
        gameScreen = 1;
        }
    } 
    else if (gameScreen == 1) {
    menuScreen();
    }
    else if (gameScreen == 2) {
      gameScreen();
    } else if (gameScreen == 3) {
      gameOverScreen();
      }
    }

    void splashScreen() {
      background(255,255,255,oppacity);
     
    image(splash, 280,100);
   
    fill(0,0,0,oppacity);
    rect(width/2,height/2,width,height);
    }

  void menuScreen() {
   imageMode(CENTER);
   image(ground,cx,cy,width,height);
  }

  void gameScreen() {
   imageMode(CENTER);
   image(ground,cx,cy,width,height);
   textFont(font,32);
   text("Time "+ time, 10,50);
   textFont(font,26);
   text("Gold " + score,15,82);
    // codes for game over screen
  }

  void gameOverScreen() {
  }
  
  void startGame(){
 // if(start = true){
 // gameScreen = 2;
  }
  }


