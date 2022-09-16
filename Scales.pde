void setup() {
  size (500, 500);
  frameRate(30);
}
void draw() {
  for (int y = -50; y <= 600; y+=30)
    for (int x = -50; x <= 600; x+=50)
      Scales(x, y);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}

void Scales(int x, int y) {
  int diam = 0;
  float g = 0; 
  while (diam < 30) {
    strokeWeight(3);
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    beginShape();
    curveVertex(-10+x, 0+y);
    curveVertex(-10+x, 0+y);
    curveVertex(20+x, 50+y);
    curveVertex(60+x, 0+y);
    curveVertex(100+x, 50+y);
    curveVertex(130+x, 0+y);
    curveVertex(150+x, 60+y);
    curveVertex(120+x, 150+y);
    curveVertex(60+x, 160+y);
    curveVertex(-10+x, 150+y);
    curveVertex(-35+x, 60+y);
    curveVertex(-10+x, 0+y);
    curveVertex(-10+x, 0+y);
    endShape();
    diam++;
    g+=255/30.0;
  }
}
