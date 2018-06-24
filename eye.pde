
int spinner=1;
float iris;
void setup() {
  size(600, 600, P3D);

}

void draw() {
  background(156, 23, 255);
  spinner+=1;
  float valsin = (float)Math.sin(spinner*0.01);
  float numValSin = valsin*8;
  if (numValSin>4) {
    strokeWeight(numValSin);
  } else {
    int x = 4;

    strokeWeight(x);
  }      
  stroke(223, 255, 123);
  if (!keyPressed) {
    iris=0.005;
  } else {
    iris = 0.01;
  }
  noFill();     

  translate(width/2, height/2);
  if (!keyPressed) {

    rotateX(55);
  }
  pushMatrix();    


  for (int i = 0; i<=360; i++) {
    pushMatrix();
    rotateY(i);  
    if (keyPressed) {
      ellipse(0, 0, 98, 100);
    } else {

      ellipse(0, 0, 100, 98);
    }

    popMatrix();
  }

  popMatrix();       
  noStroke();

  fill(12, 12, 32);

  sphere(50+(Math.abs(numValSin)*iris));
}
