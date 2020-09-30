//pallette
color red = #FF0303;
color orange = #FF8103;
color green = #03FF2A;
color blue = #03B9FF;
color white = #FCFCFC;
color black = #050505;

float slider;
float shade;
float thickness;

color selectedColor;

void setup() {

  background(255);
  size(800, 600);
  fill(163, 164, 165);
  strokeWeight(0);
  selectedColor = #A3A4A5;
  slider = 400;
  
}

void draw() {
  //background(shade);
  //shade = map(slider, 75, 700, 0, 255);
  strokeWeight(0);
  fill(220);
  stroke(black);
  rect(0, 0, 75, 600); //toolbar
  fill(red);
  strokeWeight(3);
  stroke(black);
  line (37, 350, 37, 500);
  circle(37, slider, 37);

  //buttons
  fill(red);
  tactileCircle(37, 25, 25);

  fill(orange);
  tactileCircle(37, 60, 25);

  fill(green);
  tactileCircle(37, 95, 25);

  fill(blue);
  tactileCircle(37, 130, 25);

  fill(white);
  tactileCircle(37, 165, 25);

  fill(black);
  tactileCircle(37, 200, 25);

  
  //strokeWeight(2);
  //fill(0);
  //rect(12, 600, 50, 20);
}

void tactileCircle (int x, int y, int r) {
  if (dist (x, y, mouseX, mouseY) < r) {
    stroke(white);
    strokeWeight(4);
  } else {
    strokeWeight(0);
    stroke(selectedColor);
  }
  circle(x, y, r);
}
void mouseDragged() {
  controlSlider();
  strokeWeight(thickness);
  stroke(selectedColor);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mouseReleased() {
  controlSlider();
  if (dist (37, 25, mouseX, mouseY) < 25) {
    selectedColor = red;
  }
  if (dist (37, 60, mouseX, mouseY) < 25) {
    selectedColor = orange;
  }
  if (dist (37, 95, mouseX, mouseY) < 25) {
    selectedColor = green;
  }
  if (dist (37, 130, mouseX, mouseY) < 25) {
    selectedColor = blue;
  }
  if (dist (37, 165, mouseX, mouseY) < 25) {
    selectedColor = white;
  }
  if (dist (37, 200, mouseX, mouseY) < 25) {
    selectedColor = black;
  }
}

void controlSlider() {
  if (mouseX > 0 && mouseX < 56 && mouseY > 350 && mouseY < 500) {
    slider = mouseY;
    thickness = mouseY - 350;
  }
}
