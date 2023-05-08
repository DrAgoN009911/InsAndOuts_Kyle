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
 text("All LEDS", 180, 150);
 
}
