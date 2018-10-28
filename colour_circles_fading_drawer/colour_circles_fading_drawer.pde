int num = 200;
//int[] x = new int[num];
//int[] y = new int[num];

class Points{
  int x;
  int y;
  float r;
  float g;
  float b;
  Points(){
    x=0;
    y=0;
    r=0;
    g=0;
    b=0;
  }
}

Points[] pt = new Points[num]; 


void setup() { 

  fullScreen();
  noStroke();
  noCursor();
  //println(pt[0].x);
  for (int i=0; i<num; i++){
    pt[i] = new Points();
  }
  
}

void draw() {
  background(0);
  //filter(BLUR);
  // Shift the values to the right
  for (int i = num-1; i > 0; i--) {
    pt[i].x = pt[i-1].x;
    pt[i].y = pt[i-1].y;
    pt[i].r = pt[i-1].r;
    pt[i].g = pt[i-1].g;
    pt[i].b = pt[i-1].b;
    
  }
  // Add the new values to the beginning of the array
  pt[0].x = mouseX;
  pt[0].y = mouseY;
  pt[0].r = random(255);
  pt[0].g = random(255);
  pt[0].b = random(255);
  // Draw the circles
  
  for (int i = 0; i < num; i++) {
    fill(pt[i].r, pt[i].g, pt[i].b, 255-i-55);
    ellipse(pt[i].x, pt[i].y, i, i);
  }
}
