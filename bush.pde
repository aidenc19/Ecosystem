public class Bush {
public PVector pos;
public final int SIZE = 30;
public final color COLOR = color(34,139,34);
public int health = (int)random(1,5);
public boolean active = true;
int x;
int y;


public Bush(int x, int y) {
  pos = new PVector(x,y);
  
}

public void show() {
  fill(COLOR);
  circle(pos.x,pos.y,SIZE);
}
}
