import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
 
import gifAnimation.*;
Gif walk;
Gif pidle;
PFont font;
float ammo;

PImage splash;
PImage ground;
// Player Frames

PImage pframe1;
PImage pframe2;

PImage playerCurrentFrame;

//Audio Related Stuffs
Minim minim;
AudioPlayer song,song2;


boolean moving;
//For Multiple key Presses

boolean [] keys = new boolean[2000];

//Game Variables
int  time = second();
int s = second();
int score;

void keyPressed()
{
  keys[keyCode]=true;
}
void keyReleased()
{
  keys[keyCode]=false;
}

int screenheight, screenwidth;
int cx, cy;
Player player1 = new Player(0, 0);
Player2 player2 = new Player2(0,0);
void setup() {
  time=59;
  s=1;
  frameRate(60);
  screenheight = 720;
  screenwidth = 1080;
  size(screenwidth, screenheight);
  cx = screenwidth/2;
  cy = screenheight/2;
  walk = new Gif(this, "player/walk.gif");
  pidle = new Gif(this,"player/idle.gif");
  player1.pos.x = 100;
  player1.pos.y = cy;
  player2.pos.x =width-100;
  player2.pos.y = cy;
  Player player1 = new Player(width-100, cy);
  Player2 player2 = new Player2(100, cy);
  GameScreen Screen = new GameScreen();

  
  // Screens
  splash = loadImage ("screen/splash.png") ;
  ground = loadImage("screen/ground.png");
  // Frames for animation
  pframe1 = loadImage("player/frame1.png");
  pframe2 = loadImage("player/frame2.png");

 
  
  //Font
  font = loadFont("font.vlw");
  //Directions
  
  //Music Related Stuff
   minim = new Minim(this);
  song = minim.loadFile("background2.wav");
  song2 = minim.loadFile("background.mp3");
  song.loop();
  
  
}
GameScreen Screen = new GameScreen();

//Bullets
boolean win;
ArrayList<Bullet> bullets = new ArrayList<Bullet>(); 
void draw() {

  rectMode(CENTER);

  //background(0,120,205);

  Screen.update();
  // When the player should be active .
  if (Screen.gameScreen == 1) {

   if(win==false){
     if(frameCount%60==0){
      timer(); 
     }

    for (int i = bullets.size()-1; i >=0; i --)
    {
      Bullet b = bullets.get(i);
      b.update();
      b.render();
     
    }
    
   
  }
  }
} 
//For Button

void music(){
 
}  
  
void timer(){
   
  time -= s;
  
}



