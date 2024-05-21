class Triangle2D {
  float dist; //screen coordiantes for the triangle vertices 
  boolean visible; //if there is visibility for backface culling
  color col; //distance for sorting 
  float[] screen = new float[6]; //color of the triangle
  
  Triangle2D() {}
  
  void draw() {
    if(this.visible) {
      fill(this.col); //set the fill color
      triangle(this.screen[0], this.screen[1],
               this.screen[2], this.screen[3],
               this.screen[4], this.screen[5]
      );
    }
  };
}
