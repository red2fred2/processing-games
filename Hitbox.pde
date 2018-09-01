/*
The interface Hitbox is used by all types of hitboxes.
*/
public abstract interface Hitbox {
  //getters and setters
  
  public PVector[] getPointArray();
  
  //////////////////////////////////////////////////
  //methods
  
  public boolean isCollidingWith(Hitbox hitbox);
  
}
