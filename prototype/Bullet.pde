
class Bullet extends GameObject
{  
  //Directions
  PVector Up;
  PVector Down;
  PVector Left;
  PVector Right;
  float direction;
  Bullet(float x, float y, float theta)
  {
    super(x, y);
    Up = new PVector(0,-1);
   Down = new PVector(0,1);
   Left = new PVector(-1,0);
   Right = new PVector(1,0);
  }

  void update()
  {
    // PROBLEM HERE
    theta = up;
  }

  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
 
    rect(0,0,50,50);
    popMatrix();
  }

}

