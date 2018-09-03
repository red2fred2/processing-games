/*
The Game class accumulates all the objects
in the game, and makes it run properly
*/
public class Game {
  //variables
  
  private float startTime, lastTime, currentTime, loopTime;
  
  //////////////////////////////////////////////////
  //constructors
  
  Game() {
    startGame();
  }
  
  //////////////////////////////////////////////////
  //getters and setters
  
  public float getStartTime() {
    return this.startTime;
  }
  
  private void setStartTime() {
    setStartTime(getCurrentTime());
  }
  
  private void setStartTime(float startTime) {
    this.startTime = startTime;
  }
  
  public float getLastTime() {
    return this.lastTime;
  }
  
  private void setLastTime() {
    setLastTime(getCurrentTime());
  }
  
  private void setLastTime(float lastTime) {
    this.lastTime = lastTime;
  }
  
  public float getCurrentTime() {
    return this.currentTime;
  }
  
  private void setCurrentTime() {
    this.currentTime = millis() / 1000;
  }
  
  public float getLoopTime() {
    return this.loopTime;
  }
  
  private void setLoopTime() {
    this.loopTime = getCurrentTime() - getLastTime();
  }
  
  //////////////////////////////////////////////////
  //methods
  
  public void startGame() {
    setCurrentTime();
    setStartTime();
    setLastTime();
    
    setCurrentTime();
    setLoopTime();
  }
  
  public void endGame() {
    //TODO
  }
  
  public void restartGame() {
    endGame();
    startGame();
  }
  
  public void update() {
    setLastTime();
    setCurrentTime();
    setLoopTime();
    
    doCollisions();
    updatePhysics();
  }
  
  public void doCollisions() {
    //TODO this
  }
  
  public void updatePhysics() {
    //TODO this
  }
  
}
