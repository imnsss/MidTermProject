void StartScreen() {
  background(background2);  
  textAlign(CENTER); 
  fill(255);
  textSize(60);
  text("Flappy Cat",width/2,height/2-50);
  textSize(40);
  text("Use 'SPACE' to move",width/2,height/2+50);
  textSize(35);
  text("Press SPACE to start",width/2,height/2+150);
}

void GameOver() {
  background(background3);  
  textAlign(CENTER); 
  fill(0);
  textSize(80);
  text("You lose",width/2,height/2-50);
  textSize(60);
  text("Your Score: " + count, width/2,height/2+50);
  textSize(25);
  text("Press 'SPACE' to restart",width/2,height-20);
  if (count <= 2) {
  textSize(45);
  text("You can do it! Try again! ", width/2,height/2+150);
  }
  if (count > 2 && count <= 6) {
  textSize(45);
  text("Not bad! ", width/2,height/2+150);
  }
  if (count > 6 && count <= 9) {
  textSize(45);
  text("Awesome!!!!!!!  ", width/2,height/2+150);
  }
  if (count > 9 && count <= 12) {
  textSize(45);
  text("You are Excellent!", width/2,height/2+150);
  }
  if (count > 12) {
  textSize(45);
  text("<Unstoppable!>", width/2,height/2+150);
  }
  
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
