class Player extends GameObject
{

  Player(float x, float y) {

    super(x, y);
    speed = 5;
    ammo = 5;
    //gravity = 1;
  }


  void update() {
    movement();

    if (moving==true) {
      walk.play();
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

  PVector left, right, up, down;

  void movement() {

    right = new PVector(1, 0);
    left = new PVector(-1, 0);
    up = new PVector(0, -1);
    down = new PVector(0, 1);

    if (keys[RIGHT])
    {

      pos.x+=speed;
      if (ammo>0) {
        if (keys[' '])
        {
          //        PVector left = new PVector(0, 1);
          Bullet b = new Bullet(pos.x, pos.y, right);
          bullets.add(b);
          ammo --;
          
         if(b.pos.x>=width){
            bullets.remove(b); 
           println("Removed");
         }
        }
      }
    }
    if (keys[LEFT])
    {
      pos.x-= speed;
      if (ammo>0) {
        if (keys[' '])
        {
          //        PVector left = new PVector(0, 1);
          Bullet b = new Bullet(pos.x, pos.y, left);
          bullets.add(b);
          ammo --;
        }
      }
    }
    if (keys[UP])
    {
      pos.y-= speed;
       if (ammo>0) {
        if (keys[' '])
        {
          
          //        PVector left = new PVector(0, 1);
          Bullet b = new Bullet(pos.x, pos.y, up);
          bullets.add(b);
          ammo --;
        }
      }
    }
    if (keys[DOWN])
    {

      pos.y+= speed;
       if (ammo>0) {
        if (keys[' '])
        {
          //        PVector left = new PVector(0, 1);
          Bullet b = new Bullet(pos.x, pos.y, down);
          bullets.add(b);
          ammo --;
        }
      }
    }
  }
  
  void shoot(){
    
   bullets.add(b); 
  }
}

