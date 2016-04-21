class Enemy extends GameObject {

  Enemy(float x, float y) {

    super(x, y);
    speed =5;
  }

  void update() {
    
  }
  void render() {
    
    pushMatrix();
    translate(pos.x,pos.y);
    fill(255);
    stroke(0);
    ellipse(0,0,50,50);
    popMatrix();
  }
}

