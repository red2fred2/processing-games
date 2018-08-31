//shut up about bad coding, I wanted an interface for literally everything
public interface Anything {
  
  public PVector getPosition();
  public boolean[][] getHitbox();
  public float getHitRadius();
  public boolean collidedWith(Anything thing);
  
  public void draw();
  public void update(float time);
  
}
