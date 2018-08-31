//shut up about bad coding, I wanted an interface for literally everything
public interface Interface {
  
  public PVector getPosition();
  public boolean[][] getHitbox();
  public float getHitRadius();
  public boolean collidedWith(Interface thing);
  
  public void draw();
  public void update(float time);
  
}
