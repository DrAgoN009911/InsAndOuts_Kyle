

PImage R;
PImage Ru;
float opacity =0;
float fade = 1;
PImage[] streetfighters = new PImage[4];
   PImage chall = streetfighters[0]; 
   PImage chall2 = streetfighters[1];
   
   

void setup(){
 size (500,500); 
 textSize(25);
 R = loadImage("Ryu.jpg");
 Ru = loadImage ("rufus.jpg");
 imageMode(CENTER);
 streetfighters[0]= loadImage("ken.jpg");
  streetfighters[1]= loadImage("ehonda.jpg");
   streetfighters[2]= loadImage("sagat.jpg");
    streetfighters[3]= loadImage("zangief.jpg");
 
 chall= streetfighters[0]; 
 chall2 = streetfighters[1];
 





 }


void draw (){
 background (255);
 Ryu(10, 100, 60, 100, "Ryu");
 Rufus(400, 400, 480, 400, "Rufus");
 Ehonda2(300,400, "E.Honda");
 Kentwo(70, 444, "Ken");
 Zangieftwo(300,450, "Zangief");
 Sagattwo(80, 400, "Sagat");
 image (R, 50, 240);
 image (Ru, 400, 190);
 image(chall, 50, 290);
 image (chall2, 400, 270);
    text("Click here",20, 80);
    text("click here", 80, 130);
   text("click here", 150, 200); 
   text("click here", 200, 230);
 

 
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

void Ehonda2 (int Euxtwo, int Euytwo, String Echaractertwo){
 fill(0,0,0);
 text(Echaractertwo, Euxtwo, Euytwo);
}

void Zangieftwo (int Zxtwo, int Zytwo, String Zcharactertwo){
 fill(0,0,0);
 text(Zcharactertwo, Zxtwo, Zytwo);
}
void Sagattwo(int Saxtwo, int Saytwo,String Scharacter){
 fill(0,0,0);
 text(Scharacter, Saxtwo, Saytwo);
}
void Kentwo(int Kxtwo, int Kytwo, String Kcharacter){
 fill(0,0,0);
 text(Kcharacter, Kxtwo, Kytwo);
}


void mousePressed(){
 if (mouseX > 30 && mouseX < 100 && mouseY > 50 && mouseY < 100){
   chall=streetfighters[0];
   fill(0,0,0);
   text("Ken", 80, 400);
   } 
   else if (mouseX > 100 && mouseX < 160 && mouseY < 160){
    chall2=streetfighters[1];
    fill(0,0,0);
    text("E.Honda", 300, 400);
   } 
   else if (mouseX > 160 && mouseX < 210 && mouseY > 160 && mouseY < 210){
    chall=streetfighters[2];   
fill(0,0,0);
    text("sagat", 80, 400);
   }
   else if (mouseX > 210 && mouseX < 270 && mouseY > 210 && mouseY < 260){
      chall2= streetfighters[3];
    fill(0,0,0);
    text("Zangief", 300,400);
   } else {
     image (R, 50, 260);
 image (Ru, 400, 270);
  }
}
