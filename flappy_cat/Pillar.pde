class Pillar {
  PImage p1,p2;
  float initX;
  float topX;
  float topY;
  float w = 50;                    
  float widthOfPillars = random(-15,35);    //set the width of pillars
  float gap = random(105,125);        //set the gap from pillars
  // ** I just set them with random numbers to increase the pleasure of the game. 
  // <During my test> -- set the variable of gap to change the difficulty
  //      87 -- Difficult
  //      115 -- Normal
  //      130 -- Easy
  //      190 -- Super Easy
  
  Pillar(float x, float y) {

    topX = x;       
    topY = y;  
    initX = x;
    
  }

  void draw() {
    
    rectMode(CORNERS);
    if (bgCount <= 2000){
      fill(70,210,120);
    }
    if (bgCount > 2000){   
      fill(136,233,218);
    }
    
    //noStroke();
    rect(topX + widthOfPillars, topY, topX+w, height-1);
    rect(topX + widthOfPillars, 0, topX+w, topY - gap);

    println("Current gap between pillars is: " + (topY - gap));
    topX -= 1;
  }

  void reset() {
    topX = initX + widthOfPillars;
    topY = random(95, height-95);
  }

  void reposition() {
    topX = width + widthOfPillars;
    topY = random(100, height-100);
  }

//REF https://forum.processing.org/two/discussion/3580/flappy-code
  boolean detectCollision(Cat cat) {
    boolean result = false;

    if (collision(cat.x, cat.y, cat.size, cat.size, topX + widthOfPillars, topY, topX+w, height-1) ||
        collision(cat.x, cat.y, cat.size, cat.size, topX + widthOfPillars, 0, topX+w, topY - gap)) {
      result = true;
    }
    
    return result;
  }
  
  boolean collision(float firstX, float firstY, float firstWidth, float firstHeight, float secondULX, float secondULY, float secondBRX, float secondBRY) {  //ULX = up left X
    float fH = firstHeight/2;
    float fW = firstWidth/2;
    return isInside(firstX - fW, firstY - fH, secondULX, secondULY, secondBRX, secondBRY) ||
           isInside(firstX + fW, firstY - fH, secondULX, secondULY, secondBRX, secondBRY) ||
           isInside(firstX + fW, firstY + fH, secondULX, secondULY, secondBRX, secondBRY) ||
           isInside(firstX - fW, firstY + fH, secondULX, secondULY, secondBRX, secondBRY);
  }

  boolean isInside(float x, float y, float ulX, float ulY, float brX, float brY) {
    return (x >= ulX && x <= brX && y >= ulY && y <= brY);
  }

}
