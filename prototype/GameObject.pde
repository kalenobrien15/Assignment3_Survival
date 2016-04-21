class GameObject
{
   float speed = 0.5;
   PVector direction;
  float theta;
  PVector pos;
  int gravity;
  GameObject(float x, float y)
  {
    theta = 0;
    direction = new PVector(0,1);
    gravity = 1;
    pos = new PVector(x, y);
  } 

  void applygravity () {
  }
}

