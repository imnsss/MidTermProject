PImage background1, background2, background3, background4;

boolean Start = false;
boolean gameOver = false;

int bgCount = 0;
int count = 0;

Cat cat;
Score score;
Pillar[] pillars = new Pillar[2];

void setup() {
  //fullScreen();
  size(700, 600,P2D);
  cat = new Cat(width/2, 0);
  pillars[0] = new Pillar(width, random(100, height-100));
  pillars[1] = new Pillar(width*1.5+30, random(100, height-100));
  score = new Score();
  background1 = loadImage("background1.JPG");
  background1.resize(width,height);
  background2 = loadImage("background2.jpg");
  background2.resize(width,height);
  background3 = loadImage("background3.jpg");
  background3.resize(width,height);
  background4 = loadImage("background4.jpg");
  background4.resize(width,height);
}

void draw() {
  if (bgCount <= 2000){
    background(background1);
  }
  else if(bgCount > 2000){
    background(background4);
  }
  if (bgCount > 5000) {
    bgCount = 0;
  }


  if (gameOver) {
    GameOver();
    bgCount = 0;
  } 
  else if (!Start) {
    StartScreen();
  }
  else {
    cat.draw();
        bgCount +=1;

  for(Pillar pillar : pillars) {
      pillar.draw(); 
  }
    score.draw();
    detectCollision();
  }
  
  println("Distance: " + bgCount + " m");
  surface.setTitle("Flappy Cat!  " + frameRate);
}
