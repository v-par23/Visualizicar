class Triangle extends Model {
  Mat data = new Mat();
  short mat = 0;
  
  void draw(Mat world) {
    Triangle2D triangle = new Triangle2D();
    triangle.dist = 0;
    Mat next = new Mat().mult(world, this.data);
    for( int i = 0; i < 3; i++ ) {
      triangle.dist += next.cols[i+1][3];
      float mult = 256/(next.cols[i+1][3]+5);
      triangle.screen[0+2*i] = mult*next.cols[i+1][1];
      triangle.screen[1+2*i] = mult*next.cols[i+1][2];
    }
    triangle.dist /= 3;
    triangle.visible = 
        triangle.screen[0] * (triangle.screen[3] - triangle.screen[5])
      + triangle.screen[2] * (triangle.screen[5] - triangle.screen[1])
      + triangle.screen[4] * (triangle.screen[1] - triangle.screen[3])
      < 0;
    triangles.add(triangle);
    triangle.col = color(int(256 * this.data.cols[0][3]));
  };
}
