import g4p_controls.*;

Model low_poly_car = new Model();
Model hatch = new Model();
Model SUV = new Model();
Model selectedCar = low_poly_car;

boolean isRunning = false;
boolean noColour = false;
int z = 5;

int redValue = 128;
int greenValue = 128;
int blueValue = 128;

GWindow popup;
GWindow popup2;
GWindow popup3;

String popupTitle = "";
String popupDescription = "";
String popupFeatures = "";

void setup() {
  size(500, 650);
  frameRate(30);
  createGUI();
  
  parseSTL(low_poly_car, loadBytes("low_poly_car.stl"));
  parseSTL(hatch, loadBytes("sti_hb_all.stl"));
  parseSTL(SUV, loadBytes("suv.stl"));
}

void draw() {
  if (!isRunning){
    println(frameRate);
    background(0);
    textSize(23);
    text("Welcome to Visualizicar!", 95, 40);
    noStroke();

    fill(0, 0, 255);
    textSize(15);
    noStroke();
    text("Car Model", 55, 75);
    text("Zoom & Rotate", 325, 75);
    text("Color", 50, 185);
    text("Compare Car Models", 225, 158);
    text("Feedback", 260, 230);
    if (selectedCar == SUV){
    translate(width/2,height/1);
    draw3D(selectedCar, frameCount);
    translate(-width/2,-height/1);
      }
    else {
    translate(width/2,height/1.3);
    draw3D(selectedCar, frameCount);
    translate(-width/2,-height/1.3);
      }
  }
}
