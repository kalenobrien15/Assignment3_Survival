class Player extends GameObject
{
  int hp;
  float reload;
  Player(float x, float y) {

    super(x, y);
    speed = 5;
    ammo = 500;
    reload =0;
    hp = 5;
    //gravity = 1;
  }


  void update() {
   if(hp>0){
    movement();
 
      shoot();
   

    if (keys[RIGHT])
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
  } 

  void render() {

    pushMatrix();
    imageMode(CENTER);
    //Player Animation Control
    translate(pos.x, pos.y);
    if (moving == false) {
      image(pidle, 0, 0);
    }

    if (moving==true) {
      walk.play();
      image(walk, 0, 0);
    } else {
      moving=false;
      walk.stop();
    }


    popMatrix();
  }

  PVector left, right, up, down;

  void movement() {

    right = new PVector(1, 0);
    left = new PVector(-1, 0);
    up = new PVector(0, -1);
    down = new PVector(0, 1);

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


  void shoot() {
    if (keys[RIGHT])
    {
      if (ammo>0) {
        if (keys[' '])
        {
          if (frameCount%20==0) {
            //        PVector left = new PVector(0, 1);
            Bullet b = new Bullet(pos.x+30, pos.y, right);
            bullets.add(b);
            ammo --;
          }
        }
      }
    }
    if (keys[LEFT])
    {
      if (ammo>0) {
        if (keys[' '])
        {
          if (frameCount%20==0) {
            //        PVector left = new PVector(0, 1);
            Bullet b = new Bullet(pos.x-30, pos.y, left);
            bullets.add(b);
            ammo --;
          }
        }
      }
    }
    if (keys[UP])
    {
      if (ammo>0) {
        if (keys[' '])
        {
          if (frameCount%20==0) {
            //        PVector left = new PVector(0, 1);
            Bullet b = new Bullet(pos.x, pos.y-30, up);
            bullets.add(b);
            ammo --;
          }
        }
      }
    }
    if (keys[DOWN])
    {


      if (ammo>0) {
        if (keys[' '])
        {
          if (frameCount%20==0) {
            //        PVector left = new PVector(0, 1);
            Bullet b = new Bullet(pos.x, pos.y+30, down);
            bullets.add(b);
            ammo --;
          }
        }
      }
    }
  }

}

