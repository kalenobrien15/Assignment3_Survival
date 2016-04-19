class Player extends GameObject
{
  float speed = 0.5;

  Player(float x, float y) {

    super(x, y);
    speed = 5;

    //gravity = 1;
  }


  void update() {
    movement();
    direction.x = sin(theta);
    direction.y = - cos(theta);
    direction.mult(speed);
    if (moving==true) {
      walk.play();
    }
    if (keys[' '])
    {
      Bullet b = new Bullet(pos.x, pos.y, 1.55);
      bullets.add(b);
    } else if (keys[RIGHT])
    {
      moving=true;

    } else  if (keys[LEFT])
    {
      moving= true;

    } else if (keys[UP])
    {
      moving=true;

    } else   if (keys[DOWN])
    {
      moving=true;

    } else {
      moving=false;
    }





    //If edge reached
    if (pos.x < -20)
    {
      pos.x = width-10;
    }

    if (pos.x > width+20)
    {
      pos.x = -10;
    }

    if (pos.y < -20)
    {
      pos.y = height;
    }

    if (pos.y > height+20)
    {
      pos.y = -10;
    }
  } 

  void render() {

    pushMatrix();
    imageMode(CENTER);
    //Player Animation Control
    translate(pos.x, pos.y);

    if (moving==false) {

      image(pidle, 0, 0);
    }

    if (moving==true) {

      image(walk, 0, 0);
      /*  if (frame1==true) {
       image(pframe1, 0, 0);
       framecount%10;
       frame2=true;
       }
       if (frame2==true) {
       
       image(pframe2, 0, 0);
       framecount%20;
       frame1=true; */
    }


    popMatrix();
  }


  void movement() {
    if (keys[RIGHT])
    {

      pos.x+=speed;
    }
    if (keys[LEFT])
    {

      pos.x-= speed;
    }
    if (keys[UP])
    {

      pos.y-= speed;
    }
    if (keys[DOWN])
    {

      pos.y+= speed;
    }
  }
}

