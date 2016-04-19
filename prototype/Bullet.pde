
class Bullet extends GameObject
{
  Bullet(float x, float y, float theta)
  {
    super(x, y);
    this.theta = theta;
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
    rotate(theta);
    line(0, -5, 0, 5);
    popMatrix();
  }
}

