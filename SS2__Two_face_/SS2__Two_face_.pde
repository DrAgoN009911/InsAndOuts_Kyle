void setup() {
size(800,800);
}

int value = 190;
float value2;
float r=0;
float g=0;
float b=0;

void draw() {
 rect(100, 111, 100, 250);
value2= random(255);
  mousePressed();
    background (r, g, b);
    

  println("mouse was pressed", width, height);
  if( mousePressed == true)
  {
     r = random(0, 255);
     g = random(0,255);
     b= random(0,25);
     fill(119, 222, 100);
    rect(100, 111, 100, 250);
    fill(180, 180, 215);
    rect(200, 111, 100, 250);
    fill(119, 222, 100);
    rect(500, 111, 100, 250);
    fill(180, 180, 215);
    rect(600, 111, 100, 250);
    fill(155, 255, 10);
    rect(88, 600, 800, 50);
    println("button pressed", width, height);
  } 
  else if (keyPressed == true){
    fill(119, 222, 100);
    rect(100, 111, 100, 250);
    fill(180, 180, 215);
    rect(200, 111, 100, 250);
    fill(119, 222, 100);
    rect(500, 111, 100, 250);
    fill(180, 180, 215);
    rect(600, 111, 100, 250);
    fill(255, 255, 255);
    triangle(270, 600, 382, 410, 494, 600);
  }
  
  else
  {
    background(value);
  }
    
  
}
