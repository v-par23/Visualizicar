import java.util.*;
import java.util.function.*;
byte[] stl_header = new byte[80]; // byte[80]
ArrayList<Triangle2D> triangles = new ArrayList<Triangle2D>();
Comparator<Triangle2D> compare = new Comparator<Triangle2D>(){
  int compare(Triangle2D a, Triangle2D b){
    return Float.compare(b.dist, a.dist);
  }
};
void parse(Model world, byte[] stl) {
  int i = 0;
  for(int i2 = 0; i2 < 80; i2++) { stl_header[i2] = stl[i++]; }
  int stl_size = 0;
  for(int i2 = 0; i2 < 32; i2 += 8) { stl_size |= (stl[i++] & 0xFF) << i2; }
  println(stl_size);
  world.contents.clear();
  for(int i2 = 0; i2 < stl_size; i2++) {
    Triangle triangle = new Triangle();
    world.contents.add(triangle);
    for(int i3 = 0; i3 < 4; i3++) {
      triangle.data.cols[i3][0] = 1;
      for(int i4 = 1; i4 < 4; i4++) {
        int temp = 0;
        for(int i5 = 0; i5 < 32; i5 += 8) { temp |= (stl[i++] & 0xFF) << i5; }
        triangle.data.cols[i3][i4] = Float.intBitsToFloat(temp);
      }
    }
    triangle.data.cols[0][0] = 0;
    for(int i3 = 0; i3 < 16; i3 += 8) { triangle.mat |= (stl[i++] & 0xFF) << i3; }
  }
}
void draw3D(Model world, int frameCount) {
  Mat m0 = new Mat().rotz(0.01*frameCount);//HALF_PI
  Mat m1 = new Mat().rotx(0.1 * sin(0.02*frameCount)+HALF_PI);
  Mat camMatrix = new Mat().mult(m0, m1);
  Mat viewMatrix = new Mat().inv(camMatrix);
  Mat drawMatrix = new Mat();
  Mat matrix = new Mat().mult(drawMatrix, viewMatrix);
  triangles.clear();
  world.draw(matrix);
  triangles.sort(compare);
  for(Triangle2D triangle : triangles) {
    triangle.draw();
  }
}
