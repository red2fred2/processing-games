/*
A HitboxPoint that acts like a rectangle
*/
public class RectangleHitboxPoint implements HitboxPoint {
  //variables
  
  private PVector position, size;
  private float angle;
  
  //////////////////////////////////////////////////
  //constructors
  
  RectangleHitboxPoint(PVector position, PVector size, float angle) {
    setPosition(position);
    setSize(size);
    setAngle(angle);
  }
  
  //////////////////////////////////////////////////
  //getters and setters
  
  public PVector getPosition() {
    return this.position;
  }
  
  private void setPosition(PVector position) {
    this.position = position;
  }
  
  public PVector getSize() {
    return this.size;
  }
  
  private void setSize(PVector size) {
    this.size = size;
  }
  
  public float getAngle() {
    return this.angle;
  }
  
  private void setAngle(float angle) {
    this.angle = angle;
  }
  
  //////////////////////////////////////////////////
  //implementing methods
  
  //output resisting force
  public PVector force(PVector force) {
    //return normal force for immovable Things
    return force;
  }
  
  public boolean isCollidingWith(CircleHitboxPoint that) {
    return false; //TODO this
  }
  
  public boolean isCollidingWith(RectangleHitboxPoint that) {
    return false; //TODO this
  }
  
  public float getMaxDistanceFromCenter() {
    return 0;
    //TODO this shit
  }
  
  public void drawHitbox() {
    //TODO figure this out
  }
  
}
