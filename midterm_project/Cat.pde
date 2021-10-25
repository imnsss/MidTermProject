class Cat {
  float x;
  float y;
  float size = 35;
  float vy = 0;
  float gravity = 0.35;   //set gravity 
  //PImage cat[];
  PImage cat;

  Cat(float X, float Y) {
    x = X;
    y = Y;
    cat = loadImage("bird.png");

    //cat = new PImage[12];
    //  cat[0] = loadImage("cat0.png");
    //  cat[0].resize(90,90);
    //  cat[1] = loadImage("cat1.png");
    //  cat[1].resize(90,90);
    //  cat[2] = loadImage("cat2.png");
    //  cat[2].resize(90,90);
    //  cat[3] = loadImage("cat3.png");
    //  cat[3].resize(90,90);
    //  cat[4] = loadImage("cat4.png");
    //  cat[4].resize(90,90);
    //  cat[5] = loadImage("cat5.png");
    //  cat[5].resize(90,90);
    //  cat[6] = loadImage("cat6.png");
    //  cat[6].resize(90,90);
    //  cat[7] = loadImage("cat7.png");
    //  cat[7].resize(90,90);
    //  cat[8] = loadImage("cat8.png");
    //  cat[8].resize(90,90);
    //  cat[9] = loadImage("cat9.png");
    //  cat[9].resize(90,90);
    //  cat[10] = loadImage("cat10.png");
    //  cat[10].resize(90,90);
    //  cat[11] = loadImage("cat11.png");
    //  cat[11].resize(90,90);   
  }

  void draw() {
    pushStyle();

    imageMode(CENTER);
    //for(int i=0; i<12;i++){
    //image(cat[i], x, y, size, size);
    //}
      image(cat,x,y,size,size);

    popStyle();

    y += vy;
    vy += gravity;
  }

  void reset() {
    y = 0;
    vy = 0;
  }

  void jump() {
    vy = -4;
  }
}
