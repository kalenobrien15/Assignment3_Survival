class Bullet extends GameObject
{
  PVector shootDirection;
  float bulletSpeed = 20.0f;
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
    if(pos.y>height-100){
    bullets.remove(this);
    }
    if(pos.x+20>= player1.pos.x && pos.x-20<=player1.pos.x && pos.y+40>=player1.pos.y && pos.y-40<=player1.pos.y){
     bullets.remove(this); 
     player1.hp -=1; 
     hurt.play();
     hurt.rewind();
    }
     if(pos.x+20>= player2.pos.x && pos.x-20<=player2.pos.x && pos.y+40>=player2.pos.y && pos.y-40<=player2.pos.y){
     bullets.remove(this); 
     player2.hp -=1; 
     hurt.play();
     hurt.rewind();
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

