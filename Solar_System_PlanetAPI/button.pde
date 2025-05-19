class Button {
  float px;
  float py;
  float pd;
  color b;

  Button(float pX, float pY, float pD) {
    px=pX;
    py=pY;
    pd=pD;
    b=175;
  }

  void display() {
    stroke(0, 100, 0);
    strokeWeight(5);
    fill(0, b, 30);
    circle(px, py, pd);
  }

  void fastForward() {
    fill(0, 100, 0);
    triangle(px-25, py-15, px-25, py+15, px, py);
    triangle(px+5, py-15, px+5, py+15, px+30, py);
  }

  void pause() {
    fill(0, 100, 0);
    rect(px-25+2.5, ry, rw, rh);
    rect(px+5+2.5, ry, rw, rh);
  }
  
  void play(){
   fill(0, 100, 0);
   triangle(tx, ty, tx, ty+36, tx+25, ty+18);
  }
}
