/*
A HitboxPoint that acts like a rectangle
*/
public class RectangleHitboxPoint implements HitboxPoint {
  //variables
  
  private PVector position;
  private float leftDistance;
  private float rightDistance;
  private float upperDistance;
  private float lowerDistance;
  private float angle;
  
  //////////////////////////////////////////////////
  //constructors
  
  RectangleHitboxPoint(PVector position, float leftDistance, float rightDistance, float upperDistance, float lowerDistance, float angle) {
    setPosition(position);
    setLeftDistance(leftDistance);
    setRightDistance(rightDistance);
    setUpperDistance(upperDistance);
    setLowerDistance(lowerDistance);
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
  
  public float getLeftDistance() {
    return this.leftDistance;
  }
  
  private void setLeftDistance(float leftDistance) {
    this.leftDistance = leftDistance;
  }
  
  public float getRightDistance() {
    return this.rightDistance;
  }
  
  private void setRightDistance(float rightDistance) {
    this.rightDistance = rightDistance;
  }
  
  public float getUpperDistance() {
    return this.upperDistance;
  }
  
  private void setUpperDistance(float upperDistance) {
    this.upperDistance = upperDistance;
  }
  
  public float getLowerDistance() {
    return this.lowerDistance;
  }
  
  private void setLowerDistance(float lowerDistance) {
    this.lowerDistance = lowerDistance;
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
  
}
