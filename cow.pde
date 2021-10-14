public class Cow {
  public PVector pos, vel;
  public int speed = 1;
  public final int SIZE = 15;
  public final color COLOR = color(100,50,50);
  public boolean active = true;
  int x;
  int y;


public Cow(int x, int y) {
  pos = new PVector(x,y);
  vel = new PVector(speed,speed);
}

public void show() {
  fill(COLOR);
  rect(pos.x,pos.y,20,30);
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

}
