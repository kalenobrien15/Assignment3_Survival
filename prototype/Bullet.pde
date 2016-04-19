
class Bullet extends GameObject
{
  
  Bullet(float x, float y)
  {
    super(x, y);
  
  }

  void update()
  {
    pos.x+=1;
    
    
  }

  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);

    
    rect(0,0,50,50);
    popMatrix();
  }
}

