class Score {

  boolean IncreaseCount = false;

  void increase() {
    if (!IncreaseCount) {
      count += 1;
      IncreaseCount = true;
    }
  }

  void reset() {
    count = 0;
    IncreaseCount = false;
  }

  void allowScoreIncrease() {
    IncreaseCount = false;
  }

  void draw() {
    rectMode(CORNER);
    textAlign(LEFT);
    fill(240,0,255);
    textSize(40);
    text("Score: " + count, 50, 40);
    println("Current Score:  " + count);
  }
}
