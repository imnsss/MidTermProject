void keyPressed() {
  if(keyPressed && key == ' '){
  action();
  }
}

void action() {
  if (gameOver) {
    gameOver = false;
    cat.reset();
    for(Pillar pillar : pillars) { pillar.reset(); }
    score.reset();
  } else if (!Start) {
    Start = true;
  } else {
    cat.jump();
  }
}
