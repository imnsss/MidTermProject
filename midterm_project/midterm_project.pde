PImage background;

boolean Start = false;
boolean gameOver = false;

Cat cat;
Score score;
Pillar[] pillars = new Pillar[2];

void setup() {
  //fullScreen();
  size(700, 400,P2D);
  cat = new Cat(width/2, 0);
  pillars[0] = new Pillar(width, random(100, height-100));
  pillars[1] = new Pillar(width*1.5+30, random(100, height-100));
  score = new Score();
  background = loadImage("background.JPG");
  background.resize(width,height);
}

void draw() {
  background(background);

  if (gameOver) {
    drawGameOver();
    } else if (!Start) {
    drawStartScreen();
    } else {
    cat.draw();
    for(Pillar o : pillars) {
      o.draw(); 
    }
    score.draw();
    detectCollision();
  }
}
