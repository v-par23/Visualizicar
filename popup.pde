void showPopup(String title, String description, String features) {
  if (popup == null) {
    popup = GWindow.getWindow(this, "Popup Window", 100, 100, 650, 475, JAVA2D);
    popup.addDrawHandler(this, "popupDraw");
    createPopupControls(popup);
  }
  popupTitle = title;
  popupDescription = description;
  popupFeatures = features;
  popup.setVisible(true);
}

void showComparisonPopup(String title, String comparison) {
  if (popup2 == null) {
    popup2 = GWindow.getWindow(this, "Popup2 Window", 100, 100, 650, 475, JAVA2D);
    popup2.addDrawHandler(this, "comparisionPopupDraw");
    createPopupControls(popup2);
  }
  popupTitle = title;
  //popupDescription = "";
  popupFeatures = comparison;
  popup.setVisible(true);
}
  
void comparisionPopupDraw(PApplet appc, GWinData data) {
  appc.background(200);
  appc.textSize(16);
  appc.fill(0);
  appc.text("Model: " + popupTitle, 10, 30);
  appc.text("Comparision:", 10, 70);
  appc.text(popupFeatures, 10, 80, 380, 150); // Features text box
}
  
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

void createPopupControls(GWindow win) {
  GButton closeButton = new GButton(win, 190, 550, 100, 30, "Close");
  closeButton.addEventHandler(this, "closeButton_click");
}

public void closeButton_click(GButton source, GEvent event) {
  popup.setVisible(false);
}
