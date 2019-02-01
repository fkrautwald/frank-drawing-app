PImage w;
PImage gg;


boolean wBrush=false;
boolean paint=false;

void setup() {
  size(displayWidth,displayHeight);



gg=loadImage("gg.png");
  w=loadImage("w.png");


  background(255);
  imageMode(CENTER);
  
  for (int i = 0; i < 75; i++) {
    image(gg, random(width), random(height), 100,80);
  }
}
void draw() {

 text("press A to erase, press B for spray paint", displayWidth/2,20 );


  if (wBrush==true) {
    wBrush();
  }
  if (paint==true) {
    paint();
  }
  if (mouseX > width/2) {
    strokeWeight(10);
    stroke(0, 255, 0);
    fill(255, 40, 180);
  } else {
    fill(0);
    stroke(0);
    strokeWeight(30);
  }
}

void keyPressed() {    

  if (key == 's' || key == 'S') {
    //saves an image of sketch
    saveFrame("assignment1.png");
  }
  if (key == 'a') {
    wBrush = true;
    paint = false;
    
  }

  if (key == 'b') {
    wBrush = false;
    paint = true;
  }
}
void wBrush(){
  image(w,mouseX,mouseY,50, 50);
}
void paint(){
  noStroke();
  fill(13,32,219);
   for (int i = 0; i < 20; i++) {
    ellipse(random(mouseX-30,mouseX+30),random(mouseY-30,mouseY+30),5,5);
   }
 }
