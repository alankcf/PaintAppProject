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

float size;



color selectedColor;



PImage orca;

boolean orcaOn; //true or false



void setup() {



  background(255);

  size(800, 600);

  fill(163, 164, 165);

  strokeWeight(0);

  selectedColor = #A3A4A5;

  slider = 400;

  size = 40;

  thickness = 80;

  orca = loadImage("unnamed.png");

  orcaOn = false;
}



void draw() {

  //background(shade);

  //shade = map(slider, 75, 700, 0, 255);

  strokeWeight(0);

  fill(220);

  stroke(black);

  rect(0, 0, 75, 600); //toolbar

  fill(red);

  strokeWeight(2);

  stroke(black);

  line (37, 320, 37, 470);

  fill(selectedColor);

  circle(37, slider, size);



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

  fill(255);



  // indicator of size

  //fill(selectedColor);

  //circle(37, 500, size);



  //orca buttons

  tactileOrca(8, 240, 60, 60);

  orcaOnOff();

  rect(5, 235, 65, 65);

  image(orca, 8, 240, 60, 60);
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

  if (orcaOn == false) {

    // squigly line

    controlSlider();

    strokeWeight(thickness);

    stroke(selectedColor);

    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {

    // orca drawing

    image(orca, mouseX, mouseY, 60, 60);
  }
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



  //orca button

  if (mouseX > 5 && mouseX < 70 && mouseY > 235 && mouseY < 300) {

    orcaOn = !orcaOn;
  } else {

    orcaOn = false;
  }
}



void tactileOrca(int x, int y, int w, int h) {

  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {

    strokeWeight(0);

    fill(245);
  } else {

    strokeWeight(0);

    fill(220);
  }
}

void controlSlider() {

  if (mouseX > 0 && mouseX < 56 && mouseY > 320 && mouseY < 470) {

    slider = mouseY;

    thickness = mouseY - 320;

    size = (mouseY - 290) /3;
  }
}



void orcaOnOff() {

  if (orcaOn == true) {

    stroke(255, 0, 0);

    strokeWeight(5);
  } else {

    stroke(0);

    strokeWeight(1);
  }
}
