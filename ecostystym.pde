Creature[] creatures = new Creature[30];
Food[] food = new Food[30];
Cow[] cow = new Cow[10];





public void setup() {
  size(800,800);
  spawnCreatures();
  spawnFood();
  spawnCow();
  
  moreFood();

  }


public void draw() {
  background(0,210,50);
 for (int i = 0; i < creatures.length; i++) {
   if(creatures[i].active == true){
creatures[i].attack(creatures[i]);
   creatures[i].show();
   creatures[i].move();
   creatures[i].collide();
   for (int j = 0; j < food.length; j++){
     creatures[i].eat(food[j]);
   }
   for (int p = 0; p < cow.length; p++){
     creatures[i].eat(cow[p]);
   }
   }
 }
   for(int i = 0; i < food.length; i++){
     if (food[i].active == true){ 
         food[i].show();
         

   creatures[i].eat(food[i]);
   }
   if(food.length <= 15){
    spawnFood(); 
   }
   }
    for(int i = 0; i < cow.length; i++){
      if(cow[i].active == true){
   cow[i].show();
   cow[i].move();
   cow[i].collide();
   creatures[i].eat(cow[i]);
      }
    }
   
 
}
  
  private void spawnCreatures() {
     for (int i = 0; i < creatures.length; i++) {
    creatures[i] = new Creature((int)(Math.random()* 770),(int)(Math.random()* 770));
  }
  }
  
  
   public void spawnFood() {
     for (int i = 0; i < food.length; i++) {
    food[i] = new Food((int)(Math.random()* 770),(int)(Math.random()* 770));
  }
  if(food.length <= 15){
     spawnFood();
  }
  }
    private void spawnCow() {
     for (int i = 0; i < cow.length; i++) {
    cow[i] = new Cow((int)(Math.random()* 770),(int)(Math.random()* 770));
  }
  }
  public void moreFood(){
 for(int i = 0; i <food.length; i ++) {
    food[i] = new Food((int)(Math.random()* 770),(int)(Math.random()* 770));
   spawnFood();
  }
 }
