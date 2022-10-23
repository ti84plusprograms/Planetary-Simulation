class Star {
  float starX, starY, starD;
  Star() {
    starX=random(width);
    starY=random(height);
    starD=2;
  }

  void display() {
    fill(255);
    noStroke();
    ellipse(starX, starY, starD, starD);
  }
}
