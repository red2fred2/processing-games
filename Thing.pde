 /*
The Thing class encompasses everything that is a
physical object or is drawn or exerts a force.
*/
public class Thing implements Anything {
  //variables
  
  private PVector position;
  private int angle, index;
  private color col;
  private Hitbox hitbox;
  private float hitRadius;
  
  //////////////////////////////////////////////////
  //constructors
  
  Thing(PVector position, Hitbox hitbox) {
    this.position = position; 
    setAngle(0);
    setColor(color(0));
    this.hitbox = hitbox;
    generateHitRadius(hitbox);
  }
  
  //////////////////////////////////////////////////
  //getters and setters
  
  public PVector getPosition() {
    return this.position;
  }
  
  protected void setPosition(PVector position) {
    this.position = position;
  }
  
  public int getAngle() {
    return this.angle;
  }
  
  private void setAngle(int angle) {
    this.angle = angle;
  }
  
  private color getColor() {
    return this.col;
  }
  
  protected void setColor(color col) {
    this.col = col;
  }
  
  public Hitbox getHitbox() {
    return this.hitbox;
  }
  
  protected void setHitbox(Hitbox hitbox) {
    this.hitbox = hitbox;
    generateHitRadius(hitbox);
    
  }
  
  public float getHitRadius() {
    return this.hitRadius;
  }
  
  private void setHitRadius(float hitRadius) {
    this.hitRadius = hitRadius;
  }
  
  public int getIndex() {
    return this.index;
  }
  
  public void setIndex(int index) {
    this.index = index;
  }

  //////////////////////////////////////////////////
  //implementing methods
  
  public boolean doCollisions(Anything thing) {
    return false; //TODO this
  }
  
  public void draw() {
    fill(getColor());
    //TODO this
  }
  
  public void update(float loopTime) {
    //TODO this
  }
  
  //////////////////////////////////////////////////
  //methods
  
  private void generateHitRadius(Hitbox hitbox) {
    
    
    
    /*
    
    //code for the old boolean[][] hitbox
    
    final int xLength = hitbox.length;
    final int yLength = hitbox[0].length;
    
    final PVector center = new PVector(xLength/2, yLength/2);
    
    //get pissy if it isn't a nice length
    if(center.x % 1 != 0) throw new Error("Hitbox has no center!");
    if(center.y % 1 != 0) throw new Error("Hitbox has no center!");
    
    //calculate distances from center
    ArrayList<Float> distances = new ArrayList<Float>();
    
    //loop over the array
    for(int x = 0; x < xLength; x++) {
      for(int y = 0; y < yLength; y++) {
        
        if(hitbox[x][y]) {
          final PVector position = new PVector(x, y);
          final float distance = center.dist(position);
          distances.add(distance);
        }
        
      }
      
    }
    
    //find max value
    float max = -1;
    
    for(float n : distances) {
      if(n > max) max = n;
    }
    
    setHitRadius(max);
    
    */
    
    
  }
  
  protected void changeAngle(int n) {
    final int newAngle = getAngle() + n;
    setAngle(newAngle);
  }
  
}
