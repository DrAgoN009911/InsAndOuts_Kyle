// Kyle Holston Two face If you press mouse it will show one face, if you click any key once mouse is on left side it will show one background color. And if you click any key on right side it will show a color and if not should show a random color for the background. If not it should show a random color for the rectangle.
void setup() {
size(800,800);
}

int value = 190;
float value2;
float r=0;
float g=223;
float b=0;

void draw() {
 //rect(100, 111, 100, 250);
//value2= random(255);

   // background (r, g, b);
    println("mouse was pressed", width, height);
}

  
  void mousePressed(){
       background (r,g,b);
         float ran = random(50);
  fill(ran*5);
    rect(100, 111, 100, 250);
    fill(119,222,100);
    rect(200, 111, 100, 250);
    fill(ran*5);
    rect(500, 111, 100, 250);
    fill(180, 180, 215);
    rect(600, 111, 100, 250);
    fill(155, 255, 10);
    rect(88, 600, 800, 50);
    println("button pressed", width, height);
  }
 
  
  void keyPressed(){
   if (mouseX<580){
   background(r,g,b);
 float r = random(50);
  fill(r*5);
    rect(100, 111, 100, 250);
    fill(180, 180, 215);
    rect(200, 111, 100, 250);
    fill(r*5);
    rect(500, 111, 100, 250);
    fill(180, 180, 215);
    rect(600, 111, 100, 250);
    fill(255, 255, 255);
    triangle(270, 600, 382, 410, 494, 600);
   }
  
  else if (mouseX>580){
  background(33);
  }
  else
  {
    rect(222,222,100,150);
  }
  }
  
    
  
