class Planet {
  float angle;
  float planetx;
  float planety;
  float planetd;
  float speedrotation;
  float planeta;
  float planetb;
  color c3;
  String planetname;
  String diameter;
  String RSpeed;
  String RTime;
  String Temp;
  String Dist;
  float factsX=width-20;
  float rectW=295;
  PImage img;


  Planet(float pa, float pb, float sr, float pd, color c, String n, String diam, String rs, String rt, String t, String s,PImage img) {
    angle=0;
    planeta=pa;
    planetb=pb;
    planetd=pd;
    speedrotation=sr;

    c3 =c;
    planetname=n;
    diameter=diam;
    RSpeed=rs;
    RTime=rt;
    Temp=t;
    Dist=s;
    this.img=img;
  }

  void display() {
    planetx=sunx+ planeta *sin((PI/180)*angle);//sunx+cos(angle)*planetdist;
    planety=suny+ planetb*cos((PI/180)*angle);//suny+sin(angle)*planetdist;
    fill(c3);
    noStroke();
    image(img, planetx, planety, planetd, planetd);
  }

  void displayText() {
    fill(255);
    textSize(15);
    textAlign(LEFT);
    text(planetname, planetx+20, planety);
  }

  void planetRestrict() {
    if (mouseX<planetx+planetd/2 && mouseX>planetx-planetd/2 && mouseY>planety-planetd/2 && mouseY<planety+planetd/2) {
      fill(0, 175, 30);
      stroke(0, 100, 0);
      strokeWeight(5);
      rect(width-rectW-10, 10, rectW, 110);
      displayFacts();
    }
  }

  void check() {
    if (pause==false) {
      rotation();
    } else {
      planetRestrict();
    }
  }

  void rotation() {
    angle=angle+speedrotation;
  }

  void displayFacts() {
    fill(255);
    textSize(15);
    textAlign(RIGHT);
    text(diameter, factsX, factsY[0]);
    text(RSpeed, factsX, factsY[1]);
    text(RTime, factsX, factsY[2]);
    text(Temp, factsX, factsY[3]);
    text(Dist, factsX, factsY[4]);
  }
}
