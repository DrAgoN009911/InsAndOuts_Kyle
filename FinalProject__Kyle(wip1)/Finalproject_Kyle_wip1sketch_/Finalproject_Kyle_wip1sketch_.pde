//PImage rl;

void setup(){
 size(500,500);
 textSize(25);
 background (255);
 imageMode(CENTER);
 
 //rl = loadImage("redlight.jpg");
}

void draw (){
 //image (rl, 50, 50); 
 fill(300, 500, 80);
 text("LED one on", 20, 70);
 fill(0, 408, 612);
 text("LED two on", 160, 70);
 fill(50,300,211);
 text("LED three on", 300, 70);
 fill(400,234,234);
 text("LED four on", 20, 150);
 fill(378, 21, 500);
 text("LED five on", 340, 150);
 text("All LEDS ON", 180, 120);
 text("All LEDS off", 180, 190);
 fill(312, 218, 100);
 text("Servo on", 20, 240);
 fill(80, 365, 421);
 text("Servo off", 340, 240);
 fill(379, 292, 300);
println (mouseX);
println(mouseY);
}

void mousePressed(){
 if (mouseX >27 && mouseX < 124 && mouseY > 58 && mouseY < 62){
   
   //LED 1
}else if (mouseX > 163 && mouseX < 266 && mouseY > 61 && mouseY < 63){
  
  //LED2
  
}else if (mouseX > 303 && mouseX < 428 && mouseY > 54 && mouseY < 65){
 
  //LED3
} else if (mouseX > 22 && mouseX < 131 && mouseY > 140 && mouseY < 144){
 
  //LED4
} else if (mouseX > 345 && mouseX <450 && mouseY > 141 && mouseY < 143){
 
  //LED5
} else if (mouseX > 183 && mouseX < 294 && mouseY > 108 && mouseY < 110){
 
  //All LEDS on
} else if (mouseX > 185 && mouseX < 290 && mouseY > 177 && mouseY < 180){
 
  //All LEDS OFF
} else if (mouseX > 25 && mouseX < 102 && mouseY > 232 && mouseY < 234){
  
  //Servo motor on
} else if (mouseX > 345 && mouseX < 427 && mouseY > 231 && mouseY < 233){
 
  //Servo motor off
}
else {
 
  //Everything off
}
