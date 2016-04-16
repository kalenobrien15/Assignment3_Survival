class Player extends GameObject
{
 float speed = 1;
 
  Player(float x, float y) {

    super(x, y);
    speed = 5;
    
    //gravity = 1;
  }
    
    
  void update() {
   
    direction.x = sin(theta);
    direction.y = - cos(theta);
    direction.mult(speed);
    if (moving==true){
     walk.play(); 
    }
    if (keys[' '])
    {
      Bullet b = new Bullet(pos.x, pos.y, 1.55);
      bullets.add(b);
    } 
    
    else if (keys[RIGHT])
    {
      moving=true;
      pos.x+=speed;
    }
   else  if (keys[LEFT])
    {
      moving= true;
      pos.x-= speed;
    }
    else if (keys[UP])
    {
      moving=true;
      pos.y-= speed;
    }
    else   if (keys[DOWN])
    {
      moving=true;
      pos.y+= speed;
    }
      else{moving=false;}
    
    
    
    

    //If edge reached
    if (pos.x < 0)
    {
      pos.x = width;
    }

    if (pos.x > width)
    {
      pos.x = 0;
    }

    if (pos.y < 0)
    {
      pos.y = height;
    }

    if (pos.y > height)
    {
      pos.y = 0;
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
     
      image(walk,0,0);
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
}

