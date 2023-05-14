


import processing.serial.*;
int value =0;
boolean button = false;

Serial myPort;

void setup(){
 size(500,500);
 textSize(25);
 background (255);
 imageMode(CENTER);
 
 printArray(Serial.list());
 String portName = Serial.list()[0];
 myPort = new Serial(this, portName, 9600);
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
//value = int (map(mouseY, 0, width, 0,180));
//myPort.write(value);

}

void mousePressed(){
 if (mouseX >27 && mouseX < 124 && mouseY > 58 && mouseY < 62){
   myPort.write(1);
   //LED 1
}else if (mouseX > 163 && mouseX < 266 && mouseY > 61 && mouseY < 63){
  myPort.write(2);
  //LED2
  
}else if (mouseX > 303 && mouseX < 428 && mouseY > 54 && mouseY < 65){
   myPort.write(3);

  //LED3
} else if (mouseX > 22 && mouseX < 131 && mouseY > 140 && mouseY < 144){
   myPort.write(4);

  //LED4
} else if (mouseX > 345 && mouseX <450 && mouseY > 141 && mouseY < 143){
   myPort.write(5);

  //LED5
} else if (mouseX > 183 && mouseX < 294 && mouseY > 100 && mouseY < 110){
   myPort.write(1);
   myPort.write(2);
   myPort.write(3);
   myPort.write(4);
   myPort.write(5);

  //All LEDS on
} else if (mouseX > 185 && mouseX < 290 && mouseY > 177 && mouseY < 180){
    myPort.write(0);
  //All LEDS OFF
} else if (mouseX > 25 && mouseX < 102 && mouseY > 220 && mouseY < 241){
 button = true;
  myPort.write(255);
  //Servo motor on
} else if (mouseX > 340 && mouseX < 430 && mouseY > 221 && mouseY < 239){
 button = false;
  myPort.write(0);

  //Servo motor off
}
else {
 myPort.write(0);
 button = false;
  //Everything off
}
}
