

PImage R;
PImage Ru;
float opacity =0;
float fade = 1;
PImage[] streetfighters = new PImage[4];
   PImage c0;
    PImage c1;
    PImage c2;
    PImage c3;

void setup(){
 size (500,500); 
 textSize(33);
 R = loadImage("Ryu.jpg");
 Ru = loadImage ("rufus.jpg");
 imageMode(CENTER);
 streetfighters[0]= loadImage("ken.jpg");
  streetfighters[1]= loadImage("ehonda.jpg");
   streetfighters[2]= loadImage("sagat.jpg");
    streetfighters[3]= loadImage("zangief.jpg");
 
 c0= streetfighters[0]; 
 c1= streetfighters[1];
  c2=  streetfighters[2];
   c3= streetfighters[3];





 }


void draw (){
 background (255);
 Ryu(10, 100, 60, 100, "Ryu");
 Rufus(400, 400, 480, 400, "Rufus");
 image (R, 50, 260);
 image (Ru, 400, 270);
 image(c0, 50, 260);
 image(c1, 300, 400);
 image(c2, 50, 260);
 image(c3, 300, 400);

 
 fill(opacity);
    text("VS", 200, 300);
    opacity = opacity+fade;
    if (opacity >255 || opacity <0){
    fade = -fade;
    }

}

void Ryu (int Rx, int Ry, int Rxtwo, int Rytwo, String Rcharacter){
 line(Rx, Ry +300, Rxtwo, Rytwo +300);
 fill(0,0,0);
 text(Rcharacter, Rx, Ry + 290);
}

void Rufus(int Rux, int Ruy, int Ruxone, int Ruxtwo, String Rucharacter){
 line(Rux, Ruy, Ruxone, Ruxtwo);
 fill(0,0,0);
 text(Rucharacter, Rux, Ruy);
}

void mousePressed(){
 if (mouseX > 50 && mouseX < 100 && mouseY > 50 && mouseY < 100){
   c0=streetfighters[0];
   fill(0,0,0);
   text("Ken", 80, 400);
   } 
   else if (mouseX > 100 && mouseX < 160 && mouseY < 160){
    c1=streetfighters[1];
    fill(0,0,0);
    text("E.Honda", 300,400);
   } 
   else if (mouseX > 160 && mouseX < 210 && mouseY > 160 && mouseY < 210){
    c2=streetfighters[2];   
fill(0,0,0);
    text("sagat", 80, 400);
   }
   else if (mouseX > 210 && mouseX < 270 && mouseY > 210 && mouseY < 260){
      c3= streetfighters[3];
    fill(0,0,0);
    text("Zangief", 300,400);
   } else {
     image (R, 50, 260);
 image (Ru, 400, 270);
  }
}
