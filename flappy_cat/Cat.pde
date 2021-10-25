class Cat {
  float x;
  float y;
  float size = 55;        //the size of the CAT
  float jump = 0;         //initialize 'jump'
  float gravity = 0.35;   //set gravity 
  PImage cat[];
  int cat_point = 0;

  Cat(float X, float Y) {
    x = X;
    y = Y;

    cat = new PImage[12];
      cat[0] = loadImage("cat0.png");
      cat[1] = loadImage("cat1.png");
      cat[2] = loadImage("cat2.png");
      cat[3] = loadImage("cat3.png");
      cat[4] = loadImage("cat4.png");
      cat[5] = loadImage("cat5.png");
      cat[6] = loadImage("cat6.png");
      cat[7] = loadImage("cat7.png");
      cat[8] = loadImage("cat8.png");
      cat[9] = loadImage("cat9.png");
      cat[10] = loadImage("cat10.png");
      cat[11] = loadImage("cat11.png");
  }

  void draw() {

    imageMode(CENTER);

    image(cat[cat_point], x, y, size, size); 
    cat_point++;
    cat_point %= cat.length;

    y += jump;
    jump += gravity;
  }

  void reset() {
    y = 0;
    jump = 0;
  }

  void jump() {
    jump = -3.6;  //set height of jumping
  }
}
