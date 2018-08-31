/*
The Anything interface is implemented by everything
that is a physical object or is drawn or exerts a force.
*/
public interface Anything {
  //getters and setters
  
  public PVector getPosition();
  public boolean[][] getHitbox();
  public float getHitRadius();
  public int getAngle();
  
  //////////////////////////////////////////////////
  //every loop in the main
  
  public void draw();
  public void update(float time);
  public boolean doCollisions(Anything thing);
  
}
