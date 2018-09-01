/*
This is a HitboxPoint that does acts like a circle.
*/
public class CircleHitboxPoint extends HitboxPoint {
  //variables
  
  private float radius;
  
  //////////////////////////////////////////////////
  //constructors
  
  CircleHitboxPoint(PVector position, float radius) {
    super(position);
    
    setRadius(radius);
  }
  
  //////////////////////////////////////////////////
  //getters and setters
  
  public float getRadius() {
    return this.radius;
  }
  
  private void setRadius(float radius) {
    this.radius = radius;
  }
  
  //////////////////////////////////////////////////
  //methods
  
  public boolean isCollidingWith(CircleHitboxPoint that) {
    
    float touchDistance = this.getRadius() + that.getRadius();
    float realDistance = this.getPosition().dist(that.getPosition());
    
    return realDistance < touchDistance;
  }
  
}
