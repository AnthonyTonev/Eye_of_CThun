
int spinner=1;
float iris;
boolean demonEye;
int count;
double whisp;
PFont font1;
PFont font2;

boolean lookA = false;
boolean lookB = false;
void setup() {
  size(500, 500, P3D);
demonEye = false;
count = 0;
  font1 = createFont("LucidaBrightItalic.ttf", 12);
  font2 = createFont("LucidaTypewriterRegular.ttf", 12);
 
}

void draw() {
    
  background(75,0,130);
  
  spinner+=1;
  float valsin = (float)Math.sin(spinner*0.01);
  float numValSin = valsin*8;
  if (numValSin>4) {
    strokeWeight(numValSin);
  } else {
    int x = 4;

    strokeWeight(x);
  }      
 
  if (!demonEye) {
    iris=0.005;
     fill(255);
      noStroke();
      textFont(font2);
     text("seeking your destiny", 180, 330); 
  } else {
    iris = 0.01;
       fill(255);
      noStroke();
      textFont(font2);
     text("C'Thun whispers:", 200, 330); 
     textFont(font1);
     fill(255,223,0);
    stroke(0);
    whispers(whisp);

  }
  
   stroke(255, 210,0);
  noFill();     
  translate(width/2, height/2);
  if (!demonEye) {

    rotateX(55);
    
    rotateY((float)Math.sin(spinner*0.007));
    
    
  }else{
    if(lookA){
    rotateX((float)Math.sin(spinner*0.01));
    }else if(lookB){
     rotateY((float)Math.sin(spinner*0.01)*0.5);
       rotateX((float)Math.sin(spinner*0.01));
       rotateZ((float)Math.cos(spinner*0.01)*0.2);
    }else{
     rotateX(mouseY*0.01);
     rotateZ(mouseX*0.01);
     println(mouseY*0.01);
      println(mouseX*0.01);
    }
  }
  pushMatrix();    


  for (int i = 0; i<=360; i++) {
    pushMatrix();
   
    rotateY(i);  
    if (demonEye) {
      ellipse(0, 0, 98, 100);
    } else {

      ellipse(0, 0, 100, 98);
    }

    popMatrix();
  }
  
  popMatrix();       
  noStroke();
  //fill(80, 12, 32);
  
  fill(0);
sphere(50+(Math.abs(numValSin)*iris));
//fill(0);

//translate(0,0,3.1);
//sphere(47+(Math.abs(numValSin)*iris));

}
void mousePressed(){
 demonEye = false;
      count +=1;
  whisp= Math.floor(Math.random()*7);
     
     
     

}

void mouseReleased(){
   demonEye = true;
     if(count>=2){
       demonEye = false;
    count = 0;
     }
     
     double lookRandom = Math.floor(random(0,5));
      if(lookRandom==1){
        lookB = false;
         lookA = true;
    }else if(lookRandom==2){
        lookA = false;
        lookB = true;
    }else{
     lookA=false;
     lookB = false;
    }
 }
 
 void whispers(double whisp){
         
       switch((int)whisp){
         case 0:
         text("Your friends will abandon you.", 165, 350); 
         break;
         case 1:
         text("Death is close...", 210, 350); 
         break;
         case 2:
         text("You are already dead.", 190, 350);
         break;
         case 3:
         text("Your courage will fail.", 195, 350); 
         break;
         case 4: 
         text("You will die", 210, 350); 
         break;
         case 5:
         text("You are weak.", 210, 350); 
         break;
         case 6:
         text("Your heart will explode.", 195, 350); 
         break;
         case 7:
         text("You will betray your friends.", 165, 350); 
         break;
       }
 }
 
