class Player extends GameObject
{
  boolean moving;
  int hp;
  float reload;
  Player(float x, float y) {

    super(x, y);
    speed = 5;
    ammo = 500;
    reload =0;
    hp = 10;
    //gravity = 1;
  }


  void update() {
    if(hp<0){
      hp = 0;
    }
    
   if(hp>0){
    movement();
 
      shoot();
   

    if (keys['D'])
    {
      moving=true;
    } else  if (keys['A'])
    {
      moving= true;
    } else if (keys['W'])
    {
      moving=true;
    } else   if (keys['S'])
    {
      moving=true;
    }
      else {moving =false;}
  





    //If edge reached
    if (pos.x < -20)
    {
      pos.x = -20;
    }

    if (pos.x > width+20)
    {
      pos.x =width+20;
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
      walk.stop();
      pidle.play();
      image(pidle, 0, 0);
    }

    if (moving==true) {
      pidle.stop();
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

    if (keys['D'])
    {

      pos.x+=speed;
    }
    if (keys['A'])
    {
      pos.x-= speed;
    }
    if (keys['W'])
    {
      pos.y-= speed;
    }
    if (keys['S'])
    {

      pos.y+= speed;
    }
  }


  void shoot() {
    if (keys['D'])
    {
      if (ammo>0) {
        if (keys[' '])
        {
          if (frameCount%20==0) {
            shoot.play();
            shoot.rewind();
            //        PVector left = new PVector(0, 1);
            Bullet b = new Bullet(pos.x+30, pos.y, right);
            bullets.add(b);
            ammo --;
          }
        }
      }
    }
    if (keys['A'])
    {
      if (ammo>0) {
        if (keys[' '])
        {
          if (frameCount%20==0) {
                shoot.play();
            shoot.rewind();
            //        PVector left = new PVector(0, 1);
            Bullet b = new Bullet(pos.x-30, pos.y, left);
            bullets.add(b);
            ammo --;
          }
        }
      }
    }
    if (keys['W'])
    {
      if (ammo>0) {
        if (keys[' '])
        {
          if (frameCount%20==0) {
                shoot.play();
            shoot.rewind();
            //        PVector left = new PVector(0, 1);
            Bullet b = new Bullet(pos.x, pos.y-30, up);
            bullets.add(b);
            ammo --;
          }
        }
      }
    }
    if (keys['S'])
    {


      if (ammo>0) {
        if (keys[' '])
        {
          if (frameCount%20==0) {
             shoot.play();
            shoot.rewind();
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

