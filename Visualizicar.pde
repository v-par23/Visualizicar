import g4p_controls.*;

//initialize different car models
Model low_poly_car = new Model();
Model hatch = new Model();
Model SUV = new Model();
Model selectedCar = low_poly_car; //default selected car model

boolean isRunning = true; //controls if the animation is running or not
boolean noColour = false; //if the color is not the default color for the car model
float z = 5; //zoom level
float rotate = 0; //rotate level

//default colour values
int redValue = 128;
int greenValue = 128;
int blueValue = 128;

//frame counter
int frame = 0;

//popup windows
GWindow popup;
GWindow popup2;
GWindow popup3;

//text for popups
String popupTitle = "";
String popupDescription = "";
String popupFeatures = "";

void setup() {
  size(500, 650); //sets window size
  frameRate(30); //sets frame rate
  createGUI(); //create the GUI elements
  
  //load parse the STL files for car models
  parseSTL(low_poly_car, loadBytes("low_poly_car.stl"));
  parseSTL(hatch, loadBytes("sti_hb_all.stl"));
  parseSTL(SUV, loadBytes("suv.stl"));
}

void draw() {
    //println(frameRate);
    background(0); //sets background to black
    textSize(23); //sets text size to 23
    text("Welcome to Visualizicar!", 95, 40); //displays welcome message
    noStroke();

    //displays labels for different sections
    fill(0, 0, 255); //sets text color to blue
    textSize(15); //sets text size to 15
    noStroke();
    text("Car Model", 55, 75);
    text("Zoom & Rotate", 325, 75);
    text("Color", 50, 185);
    text("Compare Car Models", 225, 158);
    text("Feedback", 260, 230);
    
    //draws the selected car model with the appropriate translation
    if (selectedCar == SUV){ //for SUV different translation
    translate(width/2,height/1);
    draw3D(selectedCar, frame);
    translate(-width/2,-height/1);
      }
    else { //default translation 
    translate(width/2,height/1.3);
    draw3D(selectedCar, frame);
    translate(-width/2,-height/1.3);
      }
  //increments the frame counter if animation is running    
  if (isRunning){
    frame++;
  }
}
