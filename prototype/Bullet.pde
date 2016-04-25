class Bullet extends GameObject
{
  PVector shootDirection;
  float bulletSpeed = 8.0f;
  Bullet(float x, float y, PVector currShootDirection)
  {
    super(x, y);
    shootDirection = currShootDirection;
  }

  void update()
  {
    pos.add(PVector.mult(shootDirection, bulletSpeed));
    
    if(pos.x>width){
     bullets.remove(this);
     println("removed");
    }
    if(pos.x<0){
      
    }
    if(pos.y<0){
      
    }
    if(pos.y>height){
    
    }
  }

  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);

    rect(0, 0, 10, 10);
    popMatrix();
  }
}

