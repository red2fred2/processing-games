/*
A HitboxPoint describes a single point in a Thing's hitbox.
*/
public class HitboxPoint {
  //variables
  
  private PVector position;
  
  //////////////////////////////////////////////////
  //constructors
  
  HitboxPoint(PVector position) {
    setPosition(position);
  }
  
  //////////////////////////////////////////////////
  //getters and setters
  
  public PVector getPosition() {
    return this.position;
  }
  
  protected void setPosition(PVector position) {
    this.position = position;
  }
  
  //////////////////////////////////////////////////
  //methods
  
  //returns the opposing force as a vector
  public PVector force(PVector force) {
    //return normal force from unmovable object
    return force;
  }
  
}
