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
  if(pos.x <= 0){
    vel.x ++;
  }
  if(pos.x >= 800){
    vel.x = -vel.x;
  }
}

public void eat(Food f) {
 double dist = PVector.sub(this.pos,f.pos).mag();
    if (dist <= this.SIZE / 2 + f.SIZE / 2) {
       
     f.active = false;
    }
     
}
public void eat(Cow c) {
 if (this.pos.x == c.pos.x && this.pos.y == c.pos.y && this.pos.y == c.pos.y + c.SIZE){
     c.active = false;
    }
}



public void attack(Creature c) {
  
}
}
