
class Bullet extends GameObject
{  
  //Directions

 
  Bullet(float x, float y, float theta)
  {
    super(x, y);
   
  }

  void update()
  {    
    direction.x = sin(theta);
    direction.y = -cos(theta);
    pos.add(direction);
  }

  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    
    rect(0,0,50,50);
    popMatrix();
  }

}

