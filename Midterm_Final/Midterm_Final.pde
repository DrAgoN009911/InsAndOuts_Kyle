// Fill the rects

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

String state = "pregame";
float [] rec = new float [5];
float recs = rec[0];
float recs1 = rec[1];
float recs2 = rec[2];
float recs3 = rec[3];
float recs4 = rec[4];
float r = 0;
 float g = 0;
float b =0;


void setup (){
  size (500, 500);
  textAlign(CENTER);
  textSize(20);
    rec [0] =  (20);
    recs = rec[0];
    rec [1] = (110);
    recs1 = rec[1];
    rec [2] = (50);
    recs2 = rec[2];
    rec[3] = (200);
    recs3 = rec[3];
    rec[4] = (285);
    recs4 = rec[4];
    
    printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
    

}

void draw (){
    if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  if (state== "pregame"){
   pregame(); 
 }else if (state == "game"){
   game(); 
  } else if (state == "gameover"){
   gameover(); 
  }
  println("mouseX :" + mouseX);
  println("mouseY :" + mouseY);
}

void keyPressed()
{
 if (state == "pregame"){
   if (key == '1'){
 state = "game";
   }
 } else if (state == "game"){
 state = "gameover";  
 } else if (state == "gameover"){
  state = "pregame"; 
 }
}

void mousePressed()
{
 if (mouseX > 21 && mouseX < 108 && mouseY > 24 && mouseY < 108)
 {
 fill (100, 40, 200);
  rect (recs, recs, 90, 90); 
 } else if (mouseX > 111 && mouseX < 161 && mouseY > 112 && mouseY < 160){
  fill(255, 0, 0);
  rect(recs1, recs1, 50, 50); 
 } else if (mouseX > 141 && mouseX < 171 && mouseY > 52 && mouseY < 78){
  fill(11, 50, 99);
    rect (140, recs2, 30, 30);

 } else if (mouseX> 200 && mouseX < 241 && mouseY > 82 && mouseY < 121){
   float r = random(50);
   float g = random (220);
   float b = random(100);
   fill(r*5, g *5, b *5);
    rect(recs3,80, 40,40);
 } else if (mouseX > 140 && mouseX < 339 && mouseY > 287 && mouseY < 485){
  fill(111, 99, 180);
    rect(140, recs4, 200,200);
 }
}


void pregame(){
  background(0);
  text("Click to start the game",width/2, height/2); 
  text("and click the number one to continue",width/2 , height/2+50);
}

void game(){
 background(255,0,0);
 text("Click the rectangles to fill it in", width/2, height/2);
    rect (recs, recs, 90, 90);
    rect (recs1, recs1, 50, 50);
  rect (140, recs2, 30, 30);
  rect(recs3,80, 40,40);
  rect(140, recs4, 200,200);
  fill(val,val,222); //Potentiometer will change the color of the shapes
  ellipse(width/2, height/2, 100,100);
  

} 

void gameover(){
 background (255, 100, 222);
 text("Game over", width/2, height/2);
 text("Click the number one to play again", width/2, height/2+50);
}
