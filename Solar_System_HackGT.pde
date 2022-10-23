import processing.sound.*;
SoundFile file;
Planet[] planet= new Planet[9];
Star[] star=new Star[1000];
Button[] button=new Button[2];
asteroidBelt[] asteroid =new asteroidBelt[360];
float [] ringsX=new float[planet.length];
float [] ringsY=new float[planet.length];
float []factsY=new float[5];

boolean pause=false;
boolean ff=false;
int paused=2;
int fastforwarded=2;
float tx, ty;
float rw, rh;
float ry;
float sunx, suny;
float translateF;
PImage ast;
PImage[] planetImages=new PImage[10];

int strokeColorOrbits=65;

void setup() {
  size (1400, 800);
  imageMode(CENTER);
  frameRate(60);
  file = new SoundFile(this, "sound.mp3");
  file.loop();

  //fullScreen();
  tx=width*2;
  ty=height*2; 
  rw=15;
  rh=30;
  ry=75;
  sunx=width/2;
  suny=height/2;
  //ast=loadImage("asteroid.png");
  ast=loadImage("asteroid2.png");

  planetImages[0]=loadImage("mercury.png");
  planetImages[1]=loadImage("venus.png");
  planetImages[2]=loadImage("earth.png");
  planetImages[3]=loadImage("mars.png");
  planetImages[4]=loadImage("jupiter.png");
  planetImages[5]=loadImage("saturn.png");
  planetImages[6]=loadImage("uranus.png");
  planetImages[7]=loadImage("neptune.png");
  planetImages[8]=loadImage("pluto.png");
  planetImages[9]=loadImage("sun.png");

  planet[0] =new Planet(100, 50, 3.95, 8, color (100), "Mercury", "Planet Diameter:4,878 km", "Planet's Rotational Speed: 47.87 km/s", "Planet's Revolution Time: 0.2 years", "Planet's Temperature:353F", "Distance From Sun:57.9M km", planetImages[0]);
  planet[1] =new Planet(130, 60, 2.917, 10, color(255, 165, 0), "Venus", "Planet Diameter:12,104 km", "Planet's Rotational Speed:35.02 km/s", "Planet's Revolution Time: 0.6 years", "Planet's Temperature:847F", "Distance From Sun:108.2M km", planetImages[1]);
  planet[2] =new Planet(170, 75, 2.5, 20, color(0, 0, 255), "Earth", "Planet Diameter:12,756 km", "Planet's Rotational Speed: 29.78 km/s", "Planet's Revolution Time: 1 year", "Planet's Temperature:61F", "Distance From Sun:149.6M km", planetImages[2]);
  planet[3] =new Planet(220, 95, 2, 15, color(255, 0, 0), "Mars", "Planet Diameter:6,779 km", "Planet's Rotational Speed: 24.08 km/s", "Planet's Revolution Time: 1.9 years", "Planet's Temperature:-67F", "Distance From Sun:227.9M km", planetImages[3]);
  planet[4] =new Planet(280, 120, 1, 80, color(216, 202, 157), "Jupiter", "Planet Diameter:142,796 km", "Planet's Rotational Speed: 13.07 km/s", "Planet's Revolution Time: 11.9 years", "Planet's Temperature:-234F", "Distance From Sun:778.3M km", planetImages[4]);
  planet[5] =new Planet(350, 150, 0.8, 70, color(201, 144, 57), "Saturn", "Planet Diameter:120,660 km", "Planet's Rotational Speed: 9.69 km/s", "Planet's Revolution Time: 29.5 years", "Planet's Temperature:-301F", "Distance From Sun:1,427M km", planetImages[5]);
  planet[6] =new Planet(430, 185, 0.57, 40, color (0, 184, 255), "Uranus", "Planet Diameter:50,724 km", "Planet's Rotational Speed: 6.81 km/s", "Planet's Revolution Time: 84 years", "Planet's Temperature:-354F", "Distance From Sun:2,871M km", planetImages[6]);
  planet[7] =new Planet(520, 225, 0.45, 35, color(0, 85, 130), "Neptune", "Planet Diameter:49,244 km", "Planet's Rotational Speed: 5.43 km/s", "Planet's Revolution Time: 164.8 years", "Planet's Temperature:-373F", "Distance From Sun:4,497M km", planetImages[7]);
  planet[8] =new Planet(620, 270, 0.4, 5, color(125, 109, 63), "Pluto", "Planet Diameter:2,274 km", "Planet's Rotational Speed: 4.67km/s", "Planet's Revolution Time: 247.7 years", "Planet's Temperature:-393F", "Distance From Sun:5,913M km", planetImages[8]);

  for (int i=0; i<star.length; i++) {
    star[i]=new Star();
  }

  for (int i=0; i<ringsX.length; i++) {
    ringsX[i]=10*sq(i)+50*i+200;
    ringsY[i]=5*sq(i)+15*i+100;
  }

  for (int i=0; i<factsY.length; i++) {
    factsY[i]=i*20+30;
  }

  for (int i=0; i<button.length; i++) {
    button[i]=new Button(110*i+90, 90, 90);
  }

  for (int i=0; i<asteroid.length; i++) {
    asteroid[i]=new asteroidBelt(random(1, 5), i, 1.5);
  }
}

void draw() {
  background(0);
  //println(planet[0].planetx);
  //println("check:"+pause);
  //println("click:"+paused);
  //println("click2:"+fastforwarded);

  for (int i=0; i<star.length; i++) {
    star[i].display();
  }

  rings();

  for (int i=0; i<button.length; i++) {
    button[i].display();
    button[1].fastForward();
    button[0].pause();
    button[0].play();
  }

  displaySun();

  for (int i=0; i<asteroid.length; i++) {
    //asteroid[i].display();
    asteroid[i].rotation();
    //asteroid[i].check();
    //asteroid[i].larger();
  }

  for (Planet p : planet) {
    p.display();
    p.displayText();
    p.check();
  }

  startText(paused);
}

void rings() {
  noFill();
  //if (mousePressed) {
  //  strokeColorOrbits=0;
  //} else {
  //  strokeColorOrbits=65;
  //}
  stroke(strokeColorOrbits);
  strokeWeight(1);

  for (int i=0; i<ringsX.length; i++) {
    ellipse(sunx, suny, ringsX[i], ringsY[i]);
  }

  //stroke(0, 255, 0);
  //stroke(255);
  //ellipse(sunx, suny, 390, 170);
}

void displaySun() {
  fill(255, 255, 0);
  noStroke();
  image(planetImages[9], sunx, suny, 140, 140);
}

void mousePressed() {
  // check if hovering over pause button  
  if (mouseX<135&&mouseX>45&&mouseY<135&&mouseY>45) {
    paused++;
    if (paused%2==0) {
      pause=false;
      tx=width*2;
      ty=height*2;
      ry=75;
    } else {
      pause=true;
      tx=82.5;
      ty=72;
      ry=height*2;
    }
  }

  //check if hovering over fast forward button
  if (mouseX<245&&mouseX>155 && mouseY<135 && mouseY>45) {
    //pause=false;
    fastforwarded++;
    if (fastforwarded%2==0) {
      ff=false;
      button[1].b=175;
      for (int i=0; i<9; i++) {
        planet[i].speedrotation/=2;
      }
      for (int i=0; i<asteroid.length; i++) {
        asteroid[i].rotate/=2;
      }
    } else {
      ff=true;
      for (int i=0; i<9; i++) {
        planet[i].speedrotation*=2;
      }
      for (int i=0; i<asteroid.length; i++) {
        asteroid[i].rotate*=2;
      }
      button[1].b=255;
    }
  }
}

void startText(int p) {
  String s="";
  fill(255);
  textSize(25);
  textAlign(CENTER);
  if (p%2==0) {
    s="Pause and see what happens!";
  } else {
    s="Hover over any planet to get more information about them!";
  }
  text(s, width/2, button[0].py);
}
