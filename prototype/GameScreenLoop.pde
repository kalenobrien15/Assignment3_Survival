class GameScreen 
{
  int oppacity=255;
  // 0; Splash Screen
  // 1; Menu;
  // 2; Game Screen;
  // 3; GameOver screen;

  int gameScreen=1;
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
    } else if (gameScreen == 1) {
      menuScreen();
    } else if (gameScreen == 2) {
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
   image(CENTER);
   ground(0,0,width,height);
  }

  void gameScreen() {
    background(255,0,0);
    // codes for game over screen
  }

  void gameOverScreen() {
  }
  
  void startGame(){
 // if(start = true){
 // gameScreen = 2;
  }
  }


