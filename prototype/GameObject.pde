class GameObject
{
  PVector direction;
  float theta = 0.0f;
  PVector pos;
  int gravity;
   GameObject(float x, float y)
  {
    theta = 0;
    direction = new PVector(0,0);
    gravity = 1;
    pos = new PVector(x, y);
  } 
  
  void applygravity (){
  
  }
}
