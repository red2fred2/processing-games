public class Thing implements Interface {
  //////////////////////////////////////////////////
  //variables
  
  private PVector position;
  private short angle;
  private color color;
  private boolean[][] hitbox;
  private float hitRadius;
  //////////////////////////////////////////////////
  //constructors
  
  Thing(PVector position, boolean[][] hitbox) {
    
    this.position = position; 
    this.angle = 0;
    this.color = color(0);
    this.hitbox = hitbox;
    generateHitRadius(hitbox);
  }
  
  //////////////////////////////////////////////////
  //getters and setters
  
  public PVector getPosition() {return position;}
  protected void setPosition(PVector position) {this.position = position;}
  
  protected short getAngle() {return angle;}
  protected void setAngle(short angle) {this.angle = angle;}
  
  private color getColor() {return color;}
  protected void setColor(color color) {this.color = color;}
  
  public boolean[][] getHitbox() {return hitbox;}
  protected void setHitbox(boolean[][] hitbox) {
    this.hitbox = hitbox;
    generateHitRadius(hitbox);
    
  }
  
  public float getHitRadius() {return hitRadius;}
  private void setHitRadius(float hitRadius) {this.hitRadius = hitRadius;}
  
  //////////////////////////////////////////////////
  //methods
  
  private void generateHitRadius(boolean[][] hitbox) {
    
    final int xLength = hitbox.length;
    final int yLength = hitbox[0].length;
    final PVector center = new PVector(xLength/2, yLength/2);
    
    //get pissy if it isn't a nice length
    if(center.x % 1 != 0) throw new Error("Hitbox has no center!");
    if(center.y % 1 != 0) throw new Error("Hitbox has no center!");
    
    //calculate distances from center
    ArrayList<Float> distances = new ArrayList<Float>();
    
    for(int x = 0; x < xLength; x++) {
      for(int y = 0; y < yLength; y++) {
        if(hitbox[x][y]) {
          final PVector pos = new PVector(x, y);
          final float distance = center.dist(pos);
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
  }
}
