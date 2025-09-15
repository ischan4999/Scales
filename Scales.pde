void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
  for (int y = 500; y >= -20; y -= 25) {
    for (int x = 0; x <= 500; x += 100) {
      if (shift == true)
        scale(x+50, y);
      else
        scale(x, y);
    }
    if (shift ==true)
      shift = false;
    else
      shift = true;
  }
}
void scale(int x, int y) {
  int diam = 0;
  float c = 139;
  noFill();
  while (diam < 100) {
    stroke(c, 0, c);
    ellipse(x, y, diam, diam);
    diam++;
    c-=139/100.0;
  }
  fill(31, 81, 255);
  triangle(x, y+30, x-30, y-30, x+30, y-30);
}
