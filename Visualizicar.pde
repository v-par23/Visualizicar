import g4p_controls.*;

Model low_poly_car = new Model();
Model sti_hb_all = new Model();
Model suv2 = new Model();
Model Pickup_truck = new Model();
Model selectedCar = low_poly_car;

void setup() {
  size(1000, 1000);
  frameRate(30);
  
  parse(low_poly_car, loadBytes("low_poly_car.stl"));
  parse(sti_hb_all, loadBytes("sti_hb_all.stl"));
  parse(suv2, loadBytes("suv2.stl"));
  parse(Pickup_truck, loadBytes("Pickup_truck.stl"));

  //saveBytes("car.stl", stl);
  
  createGUI();
}

  

void draw() {
  println(frameRate);
  background(0);
  noStroke();
  translate(width/2,height/2);
  draw3D(selectedCar, frameCount);
}
