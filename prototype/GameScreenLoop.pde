class GameScreen 
{
  int oppacity=255;
  // 0; Splash Screen
  // 1; Menu;
  // 2; Game Screen;
  // 3; GameOver screen;

  int gameScreen=0;
  int currentScreen = gameScreen;
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
      if (timer>=500) {
        gameScreen = 1;
      }
    } else if (gameScreen == 1) {
      time=60; 
      menuScreen();
    } else if (gameScreen ==2) {

      gameScreen();
    } else if (gameScreen == 3) {
      gameOverScreen();
    }


    if (gameScreen == 2 && currentScreen != 2) {
      song.pause();
      song = minim.loadFile("background.mp3");

      song.loop();
      currentScreen = gameScreen;
    }
  }

  void splashScreen() {
    background(255, 255, 255, oppacity);

    image(splash, 280, 100);
    textFont(font, 50);
    fill(0);
    text("Big Egg Games ", 250, cy+300);
    fill(0, 0, 0, oppacity);
    rect(width/2, height/2, width, height);
  }

  void menuScreen() {
    imageMode(CENTER);
    textAlign(CENTER);

    image(ground, cx, cy, width, height);
    fill(255);
    textFont(font, 70);
    // Values to reset
    win=false;
    player1.hp = 10;
    player2.hp = 10;
    player1.render();
    player1.pos.y+= 5;
    player1.moving = true;
    player2.render();
    player2.pos.y -= 5;
    player2.moving = true;
    if (player1.pos.y > height+50) {
      player1.pos.y = -50;
    }
    if(player2.pos.y<-50){
     player2.pos.y = height+50; 
    }
    if (keys[' '])
    {
      gameScreen = 2; 
      player1.pos.x = cx-200;
      player1.pos.y = cy;
      player2.pos.x= cx +200;
      player2.pos.y= cy;
    }
    textFont(font, 70);
    text("Guns At Dawn", cx, cy);
    textFont(font, 30);
    text("Press Space to Start", cx, cy+100);
  }

  void gameScreen() {

    win=false;
    textAlign(CENTER);
    imageMode(CENTER);
    //Background 
    image(ground, cx, cy, width, height);
    //Player
    player1.render();
    player1.update();

    player2.render();
    player2.update();

    //Information
    textFont(font, 32);
    fill(0);
    rect(cx, height-40, width, 80);
    fill(255);
    text("Time", cx, height-42);
    text(time, cx, height-10);
    textFont(font, 32);
    text("P1 HP:" + player1.hp, 150, height-20);
    text("P2 HP:"+player2.hp, width-150, height-20);


    if (player1.hp == 0) {
      win=true;
      textFont(font, 50);
      text("PLAYER 2", cx, cy);
      text("WINS", cx, cy+100);
       textFont(font, 20);
      text("Press R to return", cx, cy+200);
    }
    if (player2.hp == 0) {
      win=true;
      textFont(font, 50);
      text("PLAYER 1 ", cx, cy);
      text("WINS", cx, cy+100);
       textFont(font, 20);
      text("Press R to return", cx, cy+200);
    }
    if (time<=0 && player1.hp>0 && player2.hp >0) {
      text("IT'S A ", cx, cy);
      text("DRAW!", cx, cy+100);
      textFont(font, 20);
      text("Press R to return", cx, cy+200);
    }
    if(keys['R']){
     gameScreen =1; 
    }
    
  }

  void gameOverScreen() {
  }

  void startGame() {
    // if(start = true){
    // gameScreen = 2;
  }
}

