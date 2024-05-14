static class Model {
  Mat local = new Mat();
  Mat world = new Mat();
  ArrayList<Model> contents = new ArrayList<Model>();
  
  void draw(Mat parent) {
  this.world.mult(parent, this.local);
  for (Model model : this.contents) {
    model.draw(this.world);
  }
}

}
