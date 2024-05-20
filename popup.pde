void showPopup() {
  if (popup == null) {
    popup = GWindow.getWindow(this, "Popup Window", 100, 100, 500, 600, JAVA2D);
    popup.addDrawHandler(this, "popupDraw");
    createPopupControls(popup);
  }
  popup.setVisible(true);
}

void popupDraw(PApplet appc, GWinData data) {
  appc.background(200);
  appc.textSize(20);
  appc.fill(0);
  if (selectedCar == low_poly_car){
    appc.text("Sedan Model!", 50, 50);
  }
  else if (selectedCar == hatch){
    appc.text("Hatchback Model!", 50, 50);
  }
  else if (selectedCar == SUV){
    appc.text("SUV Model!", 50, 50);
  }
  else if (selectedCar == pickup_truck){
    appc.text("Truck Model!", 50, 50);
  }
}

void createPopupControls(GWindow win) {
  GButton closeButton = new GButton(win, 190, 550, 100, 30, "Close");
  closeButton.addEventHandler(this, "closeButton_click");
}

public void closeButton_click(GButton source, GEvent event) {
  popup.setVisible(false);
}
