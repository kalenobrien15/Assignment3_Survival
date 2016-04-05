
PImage splash;

boolean [] keys = new boolean[2000];

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

  screenheight = 720;
  screenwidth = 1080;
  size(screenwidth, screenheight);
  cx = screenwidth/2;
  cy = screenheight/2;
    player1.pos.x = cx;
player1.pos.y = cy;
Player player1 = new Player(cx,cy);
GameScreen Screen = new GameScreen();

// Screens
 splash = loadImage ("screen/splash.png") ;
}
GameScreen Screen = new GameScreen();
Player player1 = new Player(cx,cy);

void draw() {
    rectMode(CENTER);
  
  //background(0,120,205);

Screen.update();
 // When the player should be active .
if(Screen.gameScreen == 1){
   player1.render();
   player1.update();
} 
    
  
}
