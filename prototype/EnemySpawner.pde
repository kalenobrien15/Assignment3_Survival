class EnemySpawner extends Enemy{
  ArrayList<Enemy> Enemies = new ArrayList<Enemy>(); 
  int spawned;
  EnemySpawner(float x ,float y){
   super(x, y); 
   
  }
  
  void update(){
   // pos(this)+= player1.pos;
  /*  if(spawned==5){
        Enemy e = new enemy(pos.x,pos.y);
        
    }*/ 
     
  
  
}
   void killed(){
    for(float i =Enemies.size()-1; i>=0; i++){ 
    
    
    } 
     
     
   }
}
