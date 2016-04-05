class Player extends GameObject
{
 float speed = 1;
 Player(float x, float y){
  
  super(x,y);
  speed = 3;
  //gravity = 1;
 }
 
 void update(){
   
    direction.x = sin(theta);
    direction.y = - cos(theta);
    direction.mult(speed);
    if (keys[' '])
    {
      Bullet b = new Bullet(pos.x, pos.y,90);
      bullets.add(b);
    }
    
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
    if (pos.x < 0)
    {
      pos.x = width;
    }
    
    if (pos.x > width)
    {
      pos.x = 0;
    }
    
    if (pos.y < 0)
    {
      pos.y = height;
    }
    
    if (pos.y > height)
    {
      pos.y = 0;
    }
  
 } 
 
 void render(){
  fill(0);
  stroke(0);
 ellipse(pos.x,pos.y,50,50);
 } 
}

