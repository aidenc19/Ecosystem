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
    if (creatures[i] != null && creatures[i].active) {
   creatures[i].show();
   creatures[i].move();
   creatures[i].collide();
    }
 }
   for(int i = 0; i < food.length; i++){
     if (food[i].active == true){ 
   creatures[i].eat(food[i]);
   }
    food[i].show();
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
  }
    private void spawnCow() {
     for (int i = 0; i < cow.length; i++) {
    cow[i] = new Cow((int)(Math.random()* 800),(int)(Math.random()* 800));
  }
  }
