byte val;
#include <Servo.h> 

Servo servo; 

const int LED1 = 4;
const int LED2 = 8;
const int LED3 = 12;
const int LED4 = 7;
const int LED5 = 2;
const int SERVOPIN = 9;
int angle = 0;
int value = 0;


void setup() {
  // put your setup code here, to run once:
pinMode(LED1, OUTPUT);
pinMode(LED2, OUTPUT);
pinMode(LED3, OUTPUT);
pinMode(LED4, OUTPUT);
pinMode(LED5, OUTPUT);
servo.attach(SERVOPIN);
Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
if (Serial.available()){
val = Serial.read();
}
if (val == 0){
digitalWrite(LED1, LOW);
digitalWrite(LED2, LOW);
digitalWrite(LED3, LOW);
digitalWrite(LED4, LOW);
digitalWrite(LED5, LOW);
}
else if (val == 1){
digitalWrite(LED1, HIGH);
digitalWrite(LED2, LOW);
digitalWrite(LED3, LOW);
digitalWrite(LED4, LOW);
digitalWrite(LED4, LOW);

} 
else if (val == 2){
digitalWrite(LED2, HIGH);
digitalWrite(LED1, LOW);
digitalWrite(LED3, LOW);
digitalWrite(LED4, LOW);
digitalWrite(LED5, LOW);

}
else if (val == 3){
digitalWrite(LED3, HIGH);
digitalWrite(LED1, LOW);
digitalWrite(LED2, LOW);
digitalWrite(LED4, LOW);
digitalWrite(LED5, LOW);

}
else if (val == 4){
digitalWrite(LED4, HIGH);
digitalWrite(LED1, LOW);
digitalWrite(LED2, LOW);
digitalWrite(LED3, LOW);
digitalWrite(LED5, LOW);

}
else if (val == 5){
digitalWrite(LED5, HIGH);
digitalWrite(LED1, LOW);
digitalWrite(LED2, LOW);
digitalWrite(LED3, LOW);
digitalWrite(LED4, LOW);

} else if (val == 6){
digitalWrite(LED5, HIGH);
digitalWrite(LED1, HIGH);
digitalWrite(LED2, HIGH);
digitalWrite(LED3, HIGH);
digitalWrite(LED4, HIGH);

}

 else if (value < 255){
for (angle = 0; angle < 180; angle ++)
{
servo.write(angle);
delay(15);
}

for (angle = 180; angle > 0; angle --){
servo.write(angle);
delay(15);
}
value = 0;
}
delay(10);

}
