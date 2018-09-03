/*
The class Hitbox is used by all types of hitboxes.
*/
public class Hitbox {
  //variables
  
  private ArrayList<HitboxPoint> points = new ArrayList<HitboxPoint>(); //ordered farthest from center to closest
  
  //////////////////////////////////////////////////
  //constructors
  
  Hitbox(ArrayList<HitboxPoint> points) {
    setPoints(points);
  }
  
  //////////////////////////////////////////////////
  //getters and setters
  
  public ArrayList<HitboxPoint> getPoints() {
    return this.points;
  }
  
  public void setPoints(ArrayList<HitboxPoint> points) {
    this.points = points;
  }
  
  //////////////////////////////////////////////////
  //methods
  
  public boolean isCollidingWith(Hitbox that) {
    return false; //TODO this, use concentric circles to figure out which shapes have to be checked
  }
  
  public void drawHitbox(color col) {
    fill(col);
    for(HitboxPoint point : points) {
      point.drawHitbox();
    }
  }
  
}
