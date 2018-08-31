public class Object extends Thing {
  
  private PVector velocity;
  private PVector acceleration;
  private float mass;
  
  Object(PVector velocity, PVector acceleration, float mass) {
    
    super(new PVector(), new boolean[1][1]);
    
    
    this.velocity = velocity;
    this.acceleration = acceleration;
    this.mass = mass;
  }
  
  public void force(PVector force) {
    force.div(this.mass);
    this.acceleration.add(force);
  }
  
  public void timeStep(float time) {
    PVector vel = this.acceleration.copy();
    vel.mult(time);
    this.velocity.add(vel);
    
    PVector pos = this.velocity.copy();
    pos.mult(time);
    getPosition().add(pos);
  }
}
