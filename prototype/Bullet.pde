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
  }

  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);

    rect(0, 0, 50, 50);
    popMatrix();
  }
}

