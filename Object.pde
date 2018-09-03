/*
The Object class is a dynamic version
of the Thing class
*/
public class Object extends Thing {
  //variables
  
  private PVector velocity, acceleration;
  private float mass;
  
  //////////////////////////////////////////////////
  //constructors
  
  Object(PVector position, Hitbox hitbox, PVector velocity, PVector acceleration, float mass) {
    
    super(position, hitbox);
    
    setVelocity(velocity);
    setAcceleration(acceleration);
    setMass(mass);
  }
  
  //////////////////////////////////////////////////
  //getters and setters
  
  private PVector getVelocity() {
    return this.velocity;
  }
  
  
  private void setVelocity(PVector velocity) {
    this.velocity = velocity;
  }
  
  private PVector getAcceleration() {
    return this.acceleration;
  }
  
  private void setAcceleration(PVector acceleration) {
    this.acceleration = acceleration;
  }
  
  private float getMass() {
    return this.mass;
  }
  
  private void setMass(float mass) {
    this.mass = mass;
  }
  
  //////////////////////////////////////////////////
  //implementing methods
  
  public void update(float loopTime) {
    super.update(loopTime);
    
    PVector vel = this.acceleration.copy();
    vel.mult(loopTime);
    this.velocity.add(vel);
    
    PVector pos = this.velocity.copy();
    pos.mult(loopTime);
    getPosition().add(pos);
  }
  
  //////////////////////////////////////////////////
  //methods
  
  public void force(PVector force) {
    force.div(this.mass);
    this.acceleration.add(force);
  }
  
  public void torque(int torque) {
    //TODO figure out how the fuck this works
  }
  
}
