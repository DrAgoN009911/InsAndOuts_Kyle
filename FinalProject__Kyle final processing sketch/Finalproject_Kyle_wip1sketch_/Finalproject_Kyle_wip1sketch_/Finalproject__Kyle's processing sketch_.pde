


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
 text("LED one on", 20, 100);
 fill(0, 408, 612);
 text("LED two on", 160, 70);
 fill(50,300,211);
 text("LED three on", 300, 100);
 fill(400,234,234);
 text("LED four on", 20, 280);
 fill(378, 21, 500);
 text("LED five on", 340, 280);
 text("All LEDS ON", 180, 300);
 text("All LEDS off", 180, 400);
 fill(312, 218, 100);
 text("Press the mouse over one of the LED titles", 20, 170);
 text("or the servo title", 150, 200);
 fill(214, 309, 200);
 text("Servo on", 20, 450);
 fill(80, 365, 421);
 text("Servo off", 340, 450);
 fill(379, 292, 300);
 line(480, 110, 480, 260);
 line(10, 110, 10, 260);
 line(10, 110, 480, 110);
 line(10, 260, 480, 260);
 
println (mouseX);
println(mouseY);
//value = int (map(mouseY, 0, width, 0,180));
//myPort.write(value);

}

void mousePressed(){
 if (mouseX >20 && mouseX < 140 && mouseY > 80 && mouseY < 100){
   myPort.write(1);
   //LED 1
}else if (mouseX > 159 && mouseX < 280 && mouseY > 50 && mouseY < 70){
  myPort.write(2);
  //LED2
  
}else if (mouseX > 300 && mouseX < 430 && mouseY > 80 && mouseY < 100){
   myPort.write(3);

  //LED3
} else if (mouseX > 20 && mouseX < 140 && mouseY > 260 && mouseY < 280){
   myPort.write(4);

  //LED4
} else if (mouseX > 340 && mouseX <460 && mouseY > 260 && mouseY < 280){
   myPort.write(5);

  //LED5
} else if (mouseX > 180 && mouseX < 301 && mouseY > 280 && mouseY < 300){
   myPort.write(6);

  //All LEDS on
} else if (mouseX > 180 && mouseX < 300 && mouseY > 380 && mouseY < 400){
    myPort.write(0);
  //All LEDS OFF
} else if (mouseX > 20 && mouseX < 110 && mouseY > 430 && mouseY < 450){
 button = true;
  myPort.write(255);
  //Servo motor on
} else if (mouseX > 340 && mouseX < 432 && mouseY > 430 && mouseY < 450){
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
