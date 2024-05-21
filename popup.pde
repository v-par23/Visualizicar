//show car model popup with title, description, and features
void showPopup(String title, String description, String features) {
  if (popup == null) {
    //create popup window, add draw handler, and create button
    popup = GWindow.getWindow(this, "Popup Window", 100, 100, 500, 475, JAVA2D);
    popup.addDrawHandler(this, "popupDraw");
    createPopupControls(popup);
  }
  //set the popup text
  popupTitle = title;
  popupDescription = description;
  popupFeatures = features;
  //make car model popup window visible
  popup.setVisible(true);
}

//show car model comparision popup with title and features
void showComparisonPopup(String title, String comparison) {
  if (popup2 == null) {
    //create popup window, add draw handler, and create button
    popup2 = GWindow.getWindow(this, "Popup2 Window", 100, 100, 500, 475, JAVA2D);
    popup2.addDrawHandler(this, "comparisionPopupDraw");
    createComparisionPopupControls(popup2);
  }
  //set the popup text
  popupTitle = title;
  popupFeatures = comparison;
  //make car model comparision popup window visible
  popup2.setVisible(true);
}

//show feedback popup
void showFeedbackPopup() {
  if (popup3 == null) {
    //create popup window, add draw handler, and create button
    popup3 = GWindow.getWindow(this, "Popup Window", 100, 100, 160, 200, JAVA2D);
    popup3.addDrawHandler(this, "feedbackPopupDraw");
    createFeedbackPopupControls(popup3);
  }
  //make feedback popup window visible
  popup.setVisible(true);
}

//draw handler for the feedback popup window
void feedbackPopupDraw(PApplet appc, GWinData data) {
  appc.background(200);
  appc.textSize(16);
  appc.fill(0);
  appc.text("Thank you for\n your feedback", 15, 30);
}

//draw handler for the car model comparision popup window
void comparisionPopupDraw(PApplet appc, GWinData data) {
  appc.background(200);
  appc.textSize(16);
  appc.fill(0);
  appc.text("Model: " + popupTitle, 10, 30);
  appc.text("Comparision:", 10, 70);
  appc.text(popupFeatures, 10, 80, 380, 150); // Features text box
}
 
//draw handler for the car model popup window
void popupDraw(PApplet appc, GWinData data) {
  appc.background(200);
  appc.textSize(16);
  appc.fill(0);
  appc.text("Model: " + popupTitle, 10, 30);
  appc.text("Description:", 10, 60);
  appc.text(popupDescription, 10, 70, 380, 120); // Description text box
  appc.text("Features:", 10, 200);
  appc.text(popupFeatures, 10, 210, 380, 150); // Features text box
}

//create close button for car model popup
void createPopupControls(GWindow win) {
  GButton closeButton = new GButton(win, 190, 410, 100, 30, "Close");
  closeButton.addEventHandler(this, "closeButton_click");
}

//create close button for car model comparision popup
void createComparisionPopupControls(GWindow win) {
  GButton closeButton2 = new GButton(win, 190, 410, 100, 30, "Close");
  closeButton2.addEventHandler(this, "closeButton2_click");
}

//create close button for feedback popup
void createFeedbackPopupControls(GWindow win) {
  GButton closeButton3 = new GButton(win, 20, 110, 100, 30, "Close");
  closeButton3.addEventHandler(this, "closeButton3_click");
}

//event handler for car model popup window
public void closeButton_click(GButton source, GEvent event) {
  popup.setVisible(false);
}

//event handler for car model comparision popup window
public void closeButton2_click(GButton source, GEvent event) {
  popup2.setVisible(false); 
}

//event handler for feedback popup window
public void closeButton3_click(GButton source, GEvent event) {
  popup3.setVisible(false); 
}
