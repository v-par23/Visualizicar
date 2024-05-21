import java.util.*;
import java.util.function.*;
byte[] stl_header = new byte[80]; // byte[80], byte array for STL header
ArrayList<Triangle2D> triangles = new ArrayList<Triangle2D>(); //Arraylist of 2D triangles for rendering
Comparator<Triangle2D> compare = new Comparator<Triangle2D>(){
  int compare(Triangle2D a, Triangle2D b){ //compares triangles by distance for the correct rendering order
    return Float.compare(b.dist, a.dist); //returns value
  }
};
void parseSTL(Model world, byte[] stl) {
  int i = 0;
  for(int i2 = 0; i2 < 80; i2++) {
  stl_header[i2] = stl[i++]; //reads the STL header
  }
  int stl_size = 0;
  for(int i2 = 0; i2 < 32; i2 += 8) { 
  stl_size |= (stl[i++] & 0xFF) << i2; //reads the number of triangles in the STL file
  }
  //println(stl_size);
  world.contents.clear(); //clears the model contents
  for(int i2 = 0; i2 < stl_size; i2++) {
    Triangle triangle = new Triangle();
    world.contents.add(triangle); //adds a new triangle to the model
    for(int i3 = 0; i3 < 4; i3++) {
      triangle.local.cols[i3][0] = 1; //intializes the triangle coordiantes
      for(int i4 = 1; i4 < 4; i4++) {
        int temp = 0;
        for(int i5 = 0; i5 < 32; i5 += 8) {
        temp |= (stl[i++] & 0xFF) << i5; //reads the vertex coordiantes
        }
        triangle.local.cols[i3][i4] = Float.intBitsToFloat(temp);
      }
    }
    triangle.local.cols[0][0] = 0;
    for(int i3 = 0; i3 < 16; i3 += 8) { 
    triangle.mat |= (stl[i++] & 0xFF) << i3; //reads the material index
    }
  }
}
void draw3D(Model world, int frameCount) {
  Mat m0 = new Mat().rotz(0.01*frameCount + rotate * HALF_PI); //rotation matrix for z-axis
  Mat m1 = new Mat().rotx(0.1 * sin(0.02*frameCount)+HALF_PI); //rotation matrix for x-axis
  Mat camMatrix = new Mat().mult(m0, m1); //camera matrix
  Mat viewMatrix = new Mat().inv(camMatrix); //view matrix
  Mat drawMatrix = new Mat();
  Mat matrix = new Mat().mult(drawMatrix, viewMatrix); //final transformation matrix
  triangles.clear();
  world.draw(matrix); //draws the model
  triangles.sort(compare); //sorts triangles for proper rendering order
  for(Triangle2D triangle : triangles) {
    triangle.draw(); //draws each triangle
  }
}
