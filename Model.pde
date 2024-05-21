static class Model {
  Mat local = new Mat();
  Mat world = new Mat();
  ArrayList<Model> contents = new ArrayList<Model>(); //Arraylist of child models
  
  void draw(Mat parent) {
  this.world.mult(parent, this.local); //updates world matrix
  for (Model model : this.contents) {
    model.draw(this.world); //draws each child model
  }
}

}
