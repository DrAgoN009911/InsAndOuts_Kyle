///////////////////////////////////////////////////////
/*
DEMO: SENDING DATA FROM PROCESSING TO ARDUINO
Pair with Arduino demo sketch to control motor.

Motor angle corresponds with mouseY position.
Click button for a motor sweep.

Note: Be sure to specify correct port number below!
 */
///////////////////////////////////////////////////////

int val=0; //to send over Serial
#include <Servo.h> 

//button interface
Servo servo;
boolean button=false;

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class

void setup() {
  size(500, 500); 
  background (255);
  
  //interface
  fill(0);
  textSize (22);
  textAlign (CENTER, CENTER);
  rectMode (CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
  servo.attach(SERVOPIN);
Serial.begin(9600);
}

void draw() {
  //interface
  
  //mouse location controls communication to Serial 
  val= int (map (mouseY, 0, width, 0, 180)); //remaps mouseY to 0-180  
  myPort.write(val); //write to Serial
  println(val);  //print to console
  
  //NOTE: SENDING VALUES 0-180 TO MATCH ANGLE RANGE OF SERVO. OTHER MOTORS HAVE 360 CAPABILITIES.
}

void loop() {
if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }
  if (value < 255){
     servo.write(val);  //position of servo is val
    delay(15);
    }
    else if (val == 255){
for (angle = 0; angle< 180; angle ++)
{
servo.write(angle);
delay(15);
}
 for (angle = 180; angle > 0; angle--)
    {
      servo.write(angle);
      delay(15);
    }
    val = 0; //reset val;
}
}
