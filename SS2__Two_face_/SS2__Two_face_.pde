void setup() {
size(800,800);
}

int value = 190;
float value2;
float r=0;
float g=223;
float b=0;

void draw() {
 rect(100, 111, 100, 250);
value2= random(255);

    background (r, g, b);
    

  println("mouse was pressed", width, height);
  if( mousePressed == true)
  {
       background (r,g,b);
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
    background(0,0,210);
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
