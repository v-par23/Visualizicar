import g4p_controls.*;

Model low_poly_car = new Model();
Model sti_hb_all = new Model();
Model suv2 = new Model();
Model Pickup_truck = new Model();
Model selectedCar = low_poly_car;

void setup() {
  size(500, 500);
  frameRate(30);
  createGUI();
  
  parseSTL(low_poly_car, loadBytes("low_poly_car.stl"));
  parseSTL(sti_hb_all, loadBytes("sti_hb_all.stl"));
  parseSTL(suv2, loadBytes("suv2.stl"));
  parseSTL(Pickup_truck, loadBytes("Pickup_truck.stl"));

}

  

void draw() {
  println(frameRate);
  background(0);
  noStroke();
  translate(width/2,height/2);
  draw3D(selectedCar, frameCount);
  translate(-width/2,-height/2);
}
