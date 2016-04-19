import gifAnimation.*;
Gif walk;

PFont font;

PImage splash;
PImage ground;
// Player Frames
PImage pidle;
PImage pframe1;
PImage pframe2;

PImage playerCurrentFrame;

boolean moving;
//For Multiple key Presses

boolean [] keys = new boolean[2000];

//Game Variables
int time = second();
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

void setup() {
  time=59;
  s=1;
  // frameRate(60);
  screenheight = 720;
  screenwidth = 1080;
  size(screenwidth, screenheight);
  cx = screenwidth/2;
  cy = screenheight/2;
  walk = new Gif(this, "player/walk.gif");

  player1.pos.x = cx;
  player1.pos.y = cy;
  Player player1 = new Player(cx, cy);
  GameScreen Screen = new GameScreen();

  // Screens
  splash = loadImage ("screen/splash.png") ;
  ground = loadImage("screen/ground.png");
  // Frames for animation
  pframe1 = loadImage("player/frame1.png");
  pframe2 = loadImage("player/frame2.png");
  pidle = loadImage("player/idle.png");

  //Font
  font = loadFont("font.vlw");
}
GameScreen Screen = new GameScreen();
Player player1 = new Player(cx, cy);

ArrayList<Bullet> bullets = new ArrayList<Bullet>(); 
void draw() {
  time-= s;
  rectMode(CENTER);

  //background(0,120,205);

  Screen.update();
  // When the player should be active .
  if (Screen.gameScreen == 2) {


    for (int i = 0; i < bullets.size (); i ++)
    {
      bullets.get(i).update();
      bullets.get(i).render();
    }
  }
}

