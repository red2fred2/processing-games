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
    this.startTime = getCurrentTime();
  }
  
  public float getLastTime() {
    return this.lastTime;
  }
  
  private void setLastTime() {
    this.lastTime = getCurrentTime();
  }
  
  public float getCurrentTime() {
    return this.currentTime;
  }
  
  private void setCurrentTime() {
    
  }
  
  //////////////////////////////////////////////////
  //methods
  
  public void startGame() {
    setStartTime();
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
    
  }
  
}
