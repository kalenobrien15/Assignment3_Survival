class Bullet extends GameObject
{
  PVector shootDirection;
  float bulletSpeed = 10.0f;
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
      bullets.remove(this);
    }
    if(pos.y<0){
      bullets.remove(this);
    }
    if(pos.y>height){
    bullets.remove(this);
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

