static class Model {
  Mat local = new Mat();
  Mat world = new Mat();
  ArrayList<Model> contents = new ArrayList<Model>();
  
  void draw(Mat parent) {
  world.mult(parent, local);
  ArrayList<Model> copyContents = new ArrayList<>(contents); // Create a copy
  for (Model model : copyContents) { // Iterate over the copy
    model.draw(world);
  }
}

}
