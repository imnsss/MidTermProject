void drawStartScreen() {
  background(0);  
  textAlign(CENTER); 
  fill(255);
  textSize(60);
  text("Flappy Bird",width/2,height/2-50);
  textSize(40);
  text("use 'SPACE' to move",width/2,height/2+50);
  text("Press SPACE to start",width/2,height/2+100);
}

void drawGameOver() {
  background(0);  
  textAlign(CENTER); 
  fill(255);
  textSize(60);
  text("You lose",width/2,height/2-50);
  textSize(60);
  text("Press 'SPACE' to restart",width/2,height/2+50);
  if(keyPressed && key == ' ') {
    cat.reset();
  }
}

void detectCollision() {

  if (cat.y > height || cat.y < 0) {
    gameOver = true;
  }

  for(Pillar pillar : pillars) {
    if (cat.x - cat.size/2.0 > pillar.topX + pillar.w) {
      score.increase();
    }

    if (pillar.topX + pillar.w < 0) {
      pillar.reposition();
      score.allowScoreIncrease();
    }

    if (pillar.detectCollision(cat)) {
      gameOver = true;
    }
  }
}
