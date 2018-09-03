/*
The class Hitbox is used by all types of hitboxes.
*/
public abstract interface Hitbox {
  //getters and setters
  
  public ArrayList<PVector> getPointArray();
  
  //////////////////////////////////////////////////
  //methods
  
  public boolean isCollidingWith(Hitbox that);
  public void drawHitbox();
  
}
