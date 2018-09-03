/*
A HitboxPoint describes a single point in a Thing's hitbox.
*/
public abstract interface HitboxPoint {
  
  public PVector getPosition();
  public PVector force(PVector force);
  public boolean isCollidingWith(CircleHitboxPoint that);
  public boolean isCollidingWith(RectangleHitboxPoint that);
  public float getMaxDistanceFromCenter();
  public void drawHitbox();
  
}
