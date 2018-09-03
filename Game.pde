/*
The Game class accumulates all the objects
in the game, and makes it run properly
*/
public class Game {
  //variables
  
  private float startTime, lastTime, currentTime, loopTime;
  private ArrayList<Anything> stuff = new ArrayList<Anything>(); //this list that holds everything that has physics
  
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
    final int length = stuff.size();
    final int lminus1 = length - 1;

    for(int i = 0; i < lminus1; i++) {
      Anything thing1 = stuff.get(i);
      
      for(int j = i + 1; j < length; j++) {
        Anything thing2 = stuff.get(j);
        
        thing1.doCollisions(thing2);
        
      }
    }
  }
  
  public void updatePhysics() {
    for(Anything thing : stuff) {
      thing.update(getLoopTime());
    }
  }
  
  public void addThing(Anything thing) {
    final int newIndex = stuff.size();
    thing.setIndex(newIndex);
    stuff.add(thing);
  }
  
  public void removeThing(int index) {
    stuff.remove(index);
  }
  
}
