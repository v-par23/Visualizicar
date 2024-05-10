static class Model {
  Mat local = new Mat();
  Mat world = new Mat();
  ArrayList<Model> contents = new ArrayList<Model>();
  
  void draw(Mat parent) {
    world.mult(parent, local);
    for(Model model : contents) {
      model.draw(world);
    }
  }
}
