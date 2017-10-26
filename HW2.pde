float R, G, B, SkySpeed;
float SunOri, SunY, MoonOri, MoonY, StarX, StarY, StarSize;
float a, b, i, j, k, wave;
void setup() {
  size(600, 450);
  R=95;
  G=184;
  B=255;
  SkySpeed=0.5;
  SunOri = 500;
  SunY=50;
  MoonOri=70;
  MoonY=500;
  wave = 0;
  k=0.2;
  a=0;
}

void draw() {
  //-------------- sky -----------------
  background(R, G, B);
  R = constrain(R, 0, 57);
  G = constrain(G, 0, 177);
  B = constrain(B, 0, 255);
  R=R-(0.3*SkySpeed);
  G=G-(0.8*SkySpeed);
  B=B-(1*SkySpeed);

  //---------------- Star ---------------------
    stroke(#FFFB03,255-B);
    StarX = 200;
    StarY = 200;
    StarSize = 5;
    line(StarX, StarY, StarX+StarSize, StarY);
    line(StarX, StarY, StarX-StarSize, StarY);
    line(StarX, StarY, StarX, StarY+StarSize);
    line(StarX, StarY, StarX, StarY-StarSize);

    StarX = 500;
    StarY = 40;
    StarSize = 5;
    line(StarX, StarY, StarX+StarSize, StarY);
    line(StarX, StarY, StarX-StarSize, StarY);
    line(StarX, StarY, StarX, StarY+StarSize);
    line(StarX, StarY, StarX, StarY-StarSize);

    StarX = 420;
    StarY = 80;
    StarSize = 4;
    line(StarX, StarY, StarX+StarSize, StarY);
    line(StarX, StarY, StarX-StarSize, StarY);
    line(StarX, StarY, StarX, StarY+StarSize);
    line(StarX, StarY, StarX, StarY-StarSize);

    StarX = 300;
    StarY = 150;
    StarSize = 5;
    line(StarX, StarY, StarX+StarSize, StarY);
    line(StarX, StarY, StarX-StarSize, StarY);
    line(StarX, StarY, StarX, StarY+StarSize);
    line(StarX, StarY, StarX, StarY-StarSize);

    StarX = 150;
    StarY = 50;
    StarSize = 5;
    line(StarX, StarY, StarX+StarSize, StarY);
    line(StarX, StarY, StarX-StarSize, StarY);
    line(StarX, StarY, StarX, StarY+StarSize);
    line(StarX, StarY, StarX, StarY-StarSize);

    StarX = 350;
    StarY = 60;
    StarSize = 5;
    line(StarX, StarY, StarX+StarSize, StarY);
    line(StarX, StarY, StarX-StarSize, StarY);
    line(StarX, StarY, StarX, StarY+StarSize);
    line(StarX, StarY, StarX, StarY-StarSize);
    noStroke();
  //--------------- sun -----------------
  noStroke();
  fill(#FC3329);  
  ellipseMode(RADIUS);  
  ellipse(SunOri, SunY, 40, 40);
  for (i=0; i<=30; i=i+5) {
    fill(#FC3329, 10);  
    ellipse(SunOri, SunY, 40+i, 40+i);
  }
  SunY = SunY +0.5;

  //--------------- moon -----------------
  noStroke();
  fill(#FFFB03);  
  ellipseMode(RADIUS);  
  MoonY = constrain(MoonY, 80, 400);
  ellipse(MoonOri, MoonY, 40, 40);
  fill(R, G, B);
  ellipse(MoonOri+20, MoonY, 35, 35);
  MoonY = MoonY -0.5;

  //----------- sand --------------------
  noStroke();
  fill(255, 242, 175);
  rect(0, 330, width, 170);

  //-------------- wave -------------------
  noStroke();
  fill(0, 100);
  rect(0, 330, width, 40);
  fill(5, 191, 240, 200);
  rect(0, 330, width, wave);
  wave = wave+k;
  if (wave<0||wave>40)
  {
    k=-k;
  }
  //---------- sea -----------------------
  noStroke();
  fill(5, 191, 240);
  rect(0, 220, width, 110);

  //shade
  fill(0, j);
  j = constrain(j, 0, 150);
  rect(0, 220, width, 280);
  j=j+1;
  
  //----------- coconut ------------------
  fill(#744609);
  stroke(1);
  quad(415,156,522,190,501,257,415,156);
  quad(522,190,569,244,535,320,501,257);
  quad(569,244,600,276,600,426,535,320);
  
  noStroke();
  fill(#0C9B38);
  quad(500,86,570,63,498,151,419,159);
  quad(258,89,363,95,420,160,350,156);
  quad(298,206,419,160,388,219,298,206);
  quad(298,206,388,219,391,316,298,206);
  quad(416,156,496,172,472,223,416,156);
  quad(496,172,558,248,494,254,472,223);
  
}

void mousePressed() {
  stroke(255);
  point(mouseX, mouseY);
  println("X = " +mouseX);
  println("Y = " +mouseY);
}