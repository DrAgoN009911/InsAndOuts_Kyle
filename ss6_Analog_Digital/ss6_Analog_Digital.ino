const int buttonPin = 2;
const int LED = 13;
const int LED2 = 5;
const int LED3 = 7;
const int LED4 = 11;
const int LED5 = 10;
const int LED6 = 3;

int buttonState = 0;


void setup() {
  // put your setup code here, to run once:
pinMode(LED, OUTPUT);
pinMode(LED2, OUTPUT);
pinMode(LED3, OUTPUT);
pinMode(LED4, OUTPUT);
pinMode(LED5, OUTPUT);
pinMode(LED6, OUTPUT);
pinMode(buttonPin, INPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
buttonState = digitalRead(buttonPin);
delay(10);

if (buttonState == HIGH)
{
  digitalWrite(LED, HIGH);
  delay(2000);
  digitalWrite(LED2, HIGH);
  delay(399);
  digitalWrite(LED3, HIGH);
  delay(800);
  analogWrite(LED4, 255);
  delay(2000);
  analogWrite(LED5, 189);
  delay(1000);
  analogWrite(LED6, 127);
  delay(1888);
}
else {
  digitalWrite(LED, LOW);
  delay(1000);
  digitalWrite(LED2, LOW);
  delay(899);
  digitalWrite(LED3, LOW);
  delay(999);
  analogWrite(LED4, 0);
  delay(2000);
  analogWrite(LED5, 0);
  delay(1000);
  analogWrite(LED6, 0);
  delay(1888);
}
}
