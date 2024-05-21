class Triangle extends Model {
  short mat = 0; //material index
  
  void draw(Mat parent) {
    Triangle2D triangle = new Triangle2D();
    triangle.dist = 0;
    this.world.mult(parent, this.local); //updates world matrix
    for( int i = 0; i < 3; i++ ) {
      triangle.dist += this.world.cols[i+1][3]; //calculates distance for sorting 
      float mult = 256/(this.world.cols[i+1][3]+z); //perspective divide
      triangle.screen[0+2*i] = mult*this.world.cols[i+1][1];
      triangle.screen[1+2*i] = mult*this.world.cols[i+1][2];
    }
    triangle.dist /= 3;
    triangle.visible = 
        triangle.screen[0] * (triangle.screen[3] - triangle.screen[5])
      + triangle.screen[2] * (triangle.screen[5] - triangle.screen[1])
      + triangle.screen[4] * (triangle.screen[1] - triangle.screen[3])
      < 0; //backface culling
    triangles.add(triangle); //adds to list of triangles to be drawn
    if (noColour){
      triangle.col = color(int(256 * this.local.cols[0][3])); //default color
      }
    else{
      triangle.col = color(redValue, greenValue, blueValue); //user-defined color using RGB values
    }
  };
}
