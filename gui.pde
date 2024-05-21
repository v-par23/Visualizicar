/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void llow_poly_car_button_click(GButton source, GEvent event) { //_CODE_:llow_poly_car_button:652122:
  selectedCar = low_poly_car;
  showPopup("Sedan",
            "The sedan is a sleek and stylish car, perfect for city driving and long road trips. It combines comfort with efficiency.\n" +
            "Pricing: $32,000",
            "Seats: 5\nFuel Economy: 8.5 km/l\nEngine: 2.0L Inline-4\nPerformance: 0-100 km/h in 7 seconds\nCargo Space: 15 cu ft\nSafety Rating: 4 Stars");
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:llow_poly_car_button:652122:

public void hatch_button_click(GButton source, GEvent event) { //_CODE_:hatch_button:221766:
  selectedCar = hatch;
  showPopup("Hatchback",
            "The hatchback offers a compact design with surprising interior space. Ideal for urban environments and tight parking spots.\n" +
            "Pricing: $40,000\n",
            "Seats: 5\nFuel Economy: 9.3 km/l\nEngine: 1.6L Inline-4\nPerformance: 0-100 km/h in 7.8 seconds\nCargo Space: 25 cu ft\nSafety Rating: 4.5 Stars");
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:hatch_button:221766:

public void SUV_button_click(GButton source, GEvent event) { //_CODE_:SUV_button:589195:
  selectedCar = SUV;
  showPopup("SUV",
            "The SUV provides a robust build and powerful performance, suitable for off-road adventures and family outings.\n" +
            "Pricing: $60,000\n",
            "Seats: 7\nFuel Economy: 10.1 km/l\nEngine: 3.5L Inline-4\nPerformance: 0-100 km/h in 8 seconds\nCargo Space: 80 cu ft\nSafety Rating: 5 Stars");
  println("button4 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:SUV_button:589195:

public void bcol_change1(GSlider source, GEvent event) { //_CODE_:bcol:503038:
  blueValue = int(bcol.getValueF() * 255);
  println("Blue Value: " + blueValue);
  println("slider1 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:bcol:503038:

public void slider2_change1(GSlider source, GEvent event) { //_CODE_:gcol:856539:
  greenValue = int(gcol.getValueF() * 255);
  println("Green Value: " + greenValue);
  println("slider2 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:gcol:856539:

public void slider3_change1(GSlider source, GEvent event) { //_CODE_:rcol:200590:
  redValue = int(rcol.getValueF() * 255);
  println("Red Value: " + redValue);
  println("slider3 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:rcol:200590:

public void rotate_change1(GSlider source, GEvent event) { //_CODE_:rotat:412975:
  rotate = rotat.getValueF();
  println("slider4 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:rotat:412975:

public void zoom_change1(GSlider source, GEvent event) { //_CODE_:zoom:707459:
  z = zoom.getValueF();
  println("slider5 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:zoom:707459:

public void pause_click1(GButton source, GEvent event) { //_CODE_:pause:319142:
  isRunning = !isRunning;
  println("button5 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:pause:319142:

public void nocol_click1(GButton source, GEvent event) { //_CODE_:nocol:880228:
  noColour = !noColour;
  println("nocol - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:nocol:880228:

public void sedvshb_click1(GButton source, GEvent event) { //_CODE_:sedvshb:255627:
  showComparisonPopup("Sedan vs Hatchback",
    "Model        | Sedan         | Hatchback\nSeats          | 5             | 5\nFuel Economy   | 8.5 km/l      | 9.3 km/l\nEngine         | 2.0L Inline-4 | 1.6L Inline-4\nPerformance    | 0-100 km/h in 7 s  | 0-100 km/h in 7.8 s\nCargo Space    | 15 cu ft      | 25 cu ft\nSafety Rating  | 4 Stars       | 4.5 Stars\nPricing        | $32,000       | $40,000"
  );
  println("sedvshb - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:sedvshb:255627:

public void sedvssuv_click1(GButton source, GEvent event) { //_CODE_:sedvssuv:231760:
  showComparisonPopup("Sedan vs SUV",
    "Model        | Sedan         | SUV\nSeats          | 5             | 7\nFuel Economy   | 8.5 km/l      | 10.1 km/l\nEngine         | 2.0L Inline-4 | 3.5L Inline-4\nPerformance    | 0-100 km/h in 7 s  | 0-100 km/h in 8 s\nCargo Space    | 15 cu ft      | 80 cu ft\nSafety Rating  | 4 Stars       | 5 Stars\nPricing        | $32,000       | $60,000"
  );
  println("sedvssuv - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:sedvssuv:231760:

public void hbvssuv_click1(GButton source, GEvent event) { //_CODE_:hbvssuv:971991:
  showComparisonPopup("Hatchback vs SUV",
    "Model        | Hatchback     | SUV\nSeats          | 5             | 7\nFuel Economy   | 9.3 km/l      | 10.1 km/l\nEngine         | 1.6L Inline-4 | 3.5L Inline-4\nPerformance    | 0-100 km/h in 7.8 s | 0-100 km/h in 8 s\nCargo Space    | 25 cu ft      | 80 cu ft\nSafety Rating  | 4.5 Stars     | 5 Stars\nPricing        | $40,000       | $60,000"
  );
  println("hbvssuv - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:hbvssuv:971991:

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:685775:
  if (event == GEvent.ENTERED) {
    String inputText = source.getText();
    println("Text entered: " + inputText);
    showFeedbackPopup();
    }
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:textfield1:685775:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  llow_poly_car_button = new GButton(this, 10, 86, 70, 30);
  llow_poly_car_button.setText("Sedan");
  llow_poly_car_button.addEventHandler(this, "llow_poly_car_button_click");
  hatch_button = new GButton(this, 90, 86, 70, 30);
  hatch_button.setText("Hatchback");
  hatch_button.addEventHandler(this, "hatch_button_click");
  SUV_button = new GButton(this, 49, 124, 70, 30);
  SUV_button.setText("SUV");
  SUV_button.addEventHandler(this, "SUV_button_click");
  bcol = new GSlider(this, 120, 190, 90, 30, 10.0);
  bcol.setRotation(PI/2, GControlMode.CORNER);
  bcol.setLimits(0.5, 0.0, 1.0);
  bcol.setNumberFormat(G4P.DECIMAL, 2);
  bcol.setOpaque(false);
  bcol.addEventHandler(this, "bcol_change1");
  gcol = new GSlider(this, 80, 190, 90, 30, 10.0);
  gcol.setRotation(PI/2, GControlMode.CORNER);
  gcol.setLimits(0.5, 0.0, 1.0);
  gcol.setNumberFormat(G4P.DECIMAL, 2);
  gcol.setOpaque(false);
  gcol.addEventHandler(this, "slider2_change1");
  rcol = new GSlider(this, 40, 190, 90, 30, 10.0);
  rcol.setRotation(PI/2, GControlMode.CORNER);
  rcol.setLimits(0.5, 0.0, 1.0);
  rcol.setNbrTicks(6);
  rcol.setNumberFormat(G4P.DECIMAL, 2);
  rcol.setOpaque(false);
  rcol.addEventHandler(this, "slider3_change1");
  rotat = new GSlider(this, 331, 100, 100, 40, 10.0);
  rotat.setLimits(0.0, -1.0, 1.0);
  rotat.setNumberFormat(G4P.DECIMAL, 2);
  rotat.setOpaque(false);
  rotat.addEventHandler(this, "rotate_change1");
  zoom = new GSlider(this, 331, 76, 100, 40, 10.0);
  zoom.setLimits(5, 3, 7);
  zoom.setNbrTicks(4);
  zoom.setNumberFormat(G4P.INTEGER, 0);
  zoom.setOpaque(false);
  zoom.addEventHandler(this, "zoom_change1");
  pause = new GButton(this, 209, 90, 79, 30);
  pause.setText("Pause");
  pause.addEventHandler(this, "pause_click1");
  nocol = new GButton(this, 19, 290, 97, 22);
  nocol.setText("Original Colour");
  nocol.addEventHandler(this, "nocol_click1");
  sedvshb = new GButton(this, 173, 168, 80, 30);
  sedvshb.setText("Sedan vs Hatchback");
  sedvshb.addEventHandler(this, "sedvshb_click1");
  sedvssuv = new GButton(this, 263, 168, 80, 30);
  sedvssuv.setText("Sedan vs SUV");
  sedvssuv.addEventHandler(this, "sedvssuv_click1");
  hbvssuv = new GButton(this, 353, 168, 80, 30);
  hbvssuv.setText("SUV vs Hatchback");
  hbvssuv.addEventHandler(this, "hbvssuv_click1");
  textfield1 = new GTextField(this, 211, 241, 192, 31, G4P.SCROLLBARS_NONE);
  textfield1.setPromptText("Enter the model you liked the most");
  textfield1.setOpaque(true);
  textfield1.addEventHandler(this, "textfield1_change1");
}

// Variable declarations 
// autogenerated do not edit
GButton llow_poly_car_button; 
GButton hatch_button; 
GButton SUV_button; 
GSlider bcol; 
GSlider gcol; 
GSlider rcol; 
GSlider rotat; 
GSlider zoom; 
GButton pause; 
GButton nocol; 
GButton sedvshb; 
GButton sedvssuv; 
GButton hbvssuv; 
GTextField textfield1;
