import g4p_controls.*;

Model low_poly_car = new Model();
Model hatch = new Model();
Model SUV = new Model();
Model pickup_truck = new Model();
Model selectedCar = low_poly_car;

boolean isRunning = false;

void setup() {
  size(700, 700);
  frameRate(30);
  createGUI();
  
  
  parseSTL(low_poly_car, loadBytes("low_poly_car.stl"));
  parseSTL(hatch, loadBytes("sti_hb_all.stl"));
  parseSTL(SUV, loadBytes("suv2.stl"));
  parseSTL(pickup_truck, loadBytes("Pickup_truck.stl"));


}

  

void draw() {
  if (!isRunning){
    println(frameRate);
    background(0);
    noStroke();
    translate(width/2,height/2);
    draw3D(selectedCar, frameCount);
    translate(-width/2,-height/2);
  }
}
