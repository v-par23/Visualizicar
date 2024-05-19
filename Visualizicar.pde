import g4p_controls.*;

Model low_poly_car = new Model();
Model hatch = new Model();
Model SUV = new Model();
Model pickup_truck = new Model();
Model selectedCar = low_poly_car;

boolean isRunning = false;

void setup() {
  size(500, 500);
  frameRate(30);
  createGUI();
  
  parseSTL(low_poly_car, loadBytes("low_poly_car.stl"));
  parseSTL(hatch, loadBytes("sti_hb_all.stl"));
  parseSTL(SUV, loadBytes("suv3.stl"));
  parseSTL(pickup_truck, loadBytes("truck.stl"));


}

  

void draw() {
  if (!isRunning){
    println(frameRate);
    background(0);
    textSize(23);
    text("Welcome to Visualizicar!", 35, 40);
    noStroke();

    fill(0, 0, 255);
    textSize(12);
    text("Car Model", 55, 75);
    text("Color", 50, 185);
    translate(width/2,height/1.5);
    draw3D(selectedCar, frameCount);
    translate(-width/2,-height/1.5);
  }
}
