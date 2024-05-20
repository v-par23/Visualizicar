void showPopup() {
  if (popup == null) {
    popup = GWindow.getWindow(this, "Popup Window", 100, 100, 400, 200, JAVA2D);
    popup.addDrawHandler(this, "popupDraw");
    createPopupControls(popup);
  }
  popup.setVisible(true);
}

void popupDraw(PApplet appc, GWinData data) {
  appc.background(200);
  appc.textSize(20);
  appc.fill(0);
  appc.text("This is a popup window!", 50, 50);
}

void createPopupControls(GWindow win) {
  GButton closeButton = new GButton(win, 150, 100, 100, 30, "Close");
  closeButton.addEventHandler(this, "closeButton_click");
}

public void closeButton_click(GButton source, GEvent event) {
  popup.setVisible(false);
}
