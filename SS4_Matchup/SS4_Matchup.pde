// Kyle Holston "Matchup"
//Instructions: Only move the mouse to where there is the referee and the text will change to the referee saying fight instead of the text showing VS

PImage Ryu;
PImage rufus;
PImage Streetfighter;
PImage referee;
float opacity= 0;
float fade = 1;

void setup(){
 size (800, 800);
 background (255);
 textAlign(CENTER);
 textSize(88);
 imageMode(CENTER);
 
 Ryu = loadImage("Ryu.jpg");
 rufus = loadImage("rufus.jpg");
 referee= loadImage("referee.jpg");
 Streetfighter = Ryu;
}

void draw(){
 background(255, 0,0);
  
  image (Streetfighter, 700, height/2);
    image (rufus, 80, height/2);
    image (referee, 400, 100);
    
    if (mouseX >300 && mouseX <500 && mouseY > 0 && mouseY < 200){
          text("Fight!", 400, 300);
    }
    
    else{
    fill(opacity);
    text("VS", 400, 400);
    opacity = opacity+fade;
    if (opacity >255 || opacity <0){
    fade = -fade;
    }
     
     text("Rufus", 100, 600);
     text("Ryu", 700, 600);
    }
    

  
  
}
