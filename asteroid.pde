class asteroidBelt {
  float astX;
  float astY;
  float astS;
  float angle;
  float rotate;
  float l;

  asteroidBelt(float S, float A, float R) {
    astS=S;
    angle=A;
    rotate=R;
  }

  void display() {
    astX=sunx+ 195 *sin((PI/180)*angle);//sunx+cos(angle)*planetdist;
    astY=suny+ 85*cos((PI/180)*angle);//suny+sin(angle)*p
    rotate(PI);
    image(ast, astX, astY, astS, astS);
  }

  boolean rotation() {
    if (pause==false) {
      angle=angle+rotate;
      return true;
    } else {
      return false;
    }
  }

  void larger() {
    l=map(mouseX, 0, width, 3, 50);
  }
}
