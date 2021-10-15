public class Creature {
public PVector pos, vel;
public int speed = 2;
public float hp = 100.0;
public final int SIZE = 20;
int x;
int y;
public final color COLOR = color(30,30,200);
public boolean active = true;


public Creature(int x, int y) {
  pos = new PVector(x,y);
  vel = new PVector(speed,speed);
  
}

public void show() {
  fill(COLOR);
  circle(pos.x,pos.y,SIZE);
}

public void move() {
  pos.add(vel);
  
}

public void collide() {
  if (pos.y >= 780){
   vel.y = -vel.y;
  }
  if(pos.y <= 20){
    vel.y = -vel.y;
  }
  if(pos.x <= 20){
    vel.x ++;
  }
  if(pos.x >= 780){
    vel.x = -vel.x;
  }
}

public void eat(Food f) {
 double dist = PVector.sub(this.pos,f.pos).mag();
    if (dist <= this.SIZE / 2 + f.SIZE / 2) {
       hp = +1;
     f.active = false;
    }
     
}
public void eat(Cow k) {
  double dist = PVector.sub(this.pos,k.pos).mag();
    if (dist <= this.SIZE / 2 + k.SIZE / 2) {
       hp = +5;
     k.active = false;
    }
}



public void attack(Creature c) {
   if(hp > 0){
    hp = hp -0.009;
    System.out.println("hp: " +hp);
   }
   if(hp <= 0){
    c.active = false;
   }
}
public void moreFood() {
 if(hp <= 20){
  spawnFood(); 
 }
}
}
