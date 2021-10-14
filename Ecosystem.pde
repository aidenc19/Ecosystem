Creature[] creatures = new Creature[30];
Food[] food = new Food[30];
Cow[] cow = new Cow[10];
Bush[] bush = new Bush[5];


public void setup() {
  size(800,800);
  spawnCreatures();
  spawnFood();
  spawnCow();
  spawnBush();
}

public void draw() {
  background(220);
 for (int i = 0; i < creatures.length; i++) {

   creatures[i].show();
   creatures[i].move();
   creatures[i].collide();
   creatures[i].attack(creatures[i]);
   for (int j = 0; j < food.length; j++){
     creatures[i].eat(food[j]);
   }
    
 }
   for(int i = 0; i < food.length; i++){
     if (food[i].active == true){ 
         food[i].show();
         food[i].moreFood();
   creatures[i].eat(food[i]);
   }
   }
    for(int i = 0; i < cow.length; i++){
   cow[i].show();
   cow[i].move();
   cow[i].collide();
   creatures[i].eat(cow[i]);
    }
    for(int i = 0; i < bush.length; i++){
      bush[i].show();
    }
 
}
  
  private void spawnCreatures() {
     for (int i = 0; i < creatures.length; i++) {
    creatures[i] = new Creature((int)(Math.random()* 800),(int)(Math.random()* 800));
  }
  }
   private void spawnBush() {
     for (int i = 0; i < bush.length; i++) {
    bush[i] = new Bush((int)(Math.random()* 800),(int)(Math.random()* 800));
  }
   }
  
  
   private void spawnFood() {
     for (int i = 0; i < food.length; i++) {
    food[i] = new Food((int)(Math.random()* 800),(int)(Math.random()* 800));
  }
  if(food.length <= 5){
    spawnFood();
  }
  }
    private void spawnCow() {
     for (int i = 0; i < cow.length; i++) {
    cow[i] = new Cow((int)(Math.random()* 800),(int)(Math.random()* 800));
  }
  }
