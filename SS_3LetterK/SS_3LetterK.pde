// Kyle Holston LetterK Instructions: If you move the mouse over to the open space where the lines indicate then you will see a change in the background and see the letter K appear
void setup(){
 size(700,700); 
}

void draw(){
background(255);
    
     for (int i = 10; i < 700; i = i+30) {
  line(i, 0, i, 500);
}
for (int h = 100; h <900; h = h +10){
line(0, h, 500, h);
}
if (mouseX>500 && mouseY>500){
  background(210,11,1);
  fill(0);
  rect(200,350, 100, 100);
  for (int q = 115; q <700; q = q +10){
line(0, q, 200, q);
rect(200,250,100,100);
rect(200,450,100,100);
rect(300,329,100,100);
rect(400,420,100,100);
rect(500,511,100,100);
rect(400,229,100,100);
rect(495,145,100,100);
rect(200,150,100,100);
rect(200,500,100,100);









}
}

else{
   for (int i = 10; i < 700; i = i+30) {
  line(i, 0, i, 200);
  
   }
   for (int h = 100; h <900; h = h +10){
line(0, h, 200, h);
}
}


}
