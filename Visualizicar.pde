void setup() {
  size(512, 512);
  frameRate(30);
  parse(loadBytes("low_poly_car.stl"));
  //saveBytes("car.stl", stl);
}
void draw() {
  println(frameRate);
  background(0);
  noStroke();
  translate(width/2,height/2);
  draw3D(frameCount);
}
