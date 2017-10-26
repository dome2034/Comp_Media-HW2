float R, G, B, SkySpeed, SunY, i;
void setup() {
  size(600, 400);
  R=57;
  G=177;
  B=255;
  SkySpeed=0.5;
  SunY=100;
}

void draw() {
  //-------------- sky -----------------
  background(R, G, B);
  constrain(R, 0, 57);
  constrain(G, 0, 177);
  constrain(B, 0, 255);
  R=R-(0.3*SkySpeed);
  G=G-(1*SkySpeed);
  B=B-(1*SkySpeed);

  //--------------- sun -----------------
  noStroke();
  fill(#FC3329);  
  ellipseMode(RADIUS);  
  ellipse(400, SunY, 40, 40);
  for (i=0; i<=30; i=i+5) {
    fill(#FC3329, 10);  
    ellipse(400, SunY, 40+i, 40+i);
  }
  SunY = SunY +0.5;

  //----------- fuji --------------------
  stroke(255);
  curve(0+240, 162+50, 0+240, 162, width-240, 162, width-240+50, 162+50);
  curve(0-100, height, 0, height, 0+240, 162, 0+240, 162-100);
  curve(width+100, height, width, height, width-240, 162, width-240+50, 162-100);
}

void mousePressed() {
  stroke(255);
  point(mouseX, mouseY);
  println("X = " +mouseX);
  println("Y = " +mouseY);
}