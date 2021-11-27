int x = 0, y = 0;
int thick = 0, thin = 0;
void drawPattern() {
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      if (i%20 == 0 && j%20 == 0) {
        x = i;
        y = j;
        thick = (int)(mouseX / (float)(height / 20));
        thin = 20 - (int)(mouseX / (float)(height / 20));
        beginShape();
        vertex(x+10, y + thin);
        vertex(x + (20 - thick), y+10);
        vertex(x+10, y + (20 - thin));
        vertex(x+thick, y+10);
        endShape();
      }
    }
  }
}
