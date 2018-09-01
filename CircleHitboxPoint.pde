/*
This is a HitboxPoint that does acts like a circle.
*/
public class CircleHitboxPoint implements HitboxPoint {
  //variables
  
  private PVector position;
  private float radius;
  
  //////////////////////////////////////////////////
  //constructors
  
  CircleHitboxPoint(PVector position, float radius) {
    setPosition(position);
    setRadius(radius);
  }
  
  //////////////////////////////////////////////////
  //getters and setters
  
  public PVector getPosition() {
    return this.position;
  }
  
  private void setPosition(PVector position) {
    this.position = position;
  }
  
  public float getRadius() {
    return this.radius;
  }
  
  private void setRadius(float radius) {
    this.radius = radius;
  }
  
  //////////////////////////////////////////////////
  //implementing methods
  
  //output resisting force
  public PVector force(PVector force) {
    //return normal force for immovable Things
    return force;
  }
  
  public boolean isCollidingWith(CircleHitboxPoint that) {
    
    float touchDistance = this.getRadius() + that.getRadius();
    float realDistance = this.getPosition().dist(that.getPosition());
    
    return realDistance < touchDistance;
  }
  
  public boolean isCollidingWith(RectangleHitboxPoint that) {
    return false; //TODO this
  }
  
}
