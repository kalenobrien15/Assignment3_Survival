class Player extends GameObject
{
 float speed = 1;
 Player(float x, float y){
  
  super(x,y);
  speed = 3;
  gravity = 1;
 }
 
 void update(){
   
  if(keys[RIGHT])
  {
   pos.x+=speed; 
  }
    if(keys[LEFT])
  {
   pos.x-= speed; 
  }
    if(keys[UP])
  {
    pos.y-= speed; 
  }
    if(keys[DOWN])
  {
    pos.y+= speed; 
  }
 } 
 
 void render(){
  fill(0);
  stroke(0);
 ellipse(pos.x,pos.y,50,50);
 } 
}

