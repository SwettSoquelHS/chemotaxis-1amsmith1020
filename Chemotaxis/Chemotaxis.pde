 //declare bacteria variables here   
Bacteria Bac1;

 void setup() {
 size(500,500);
 Bac1 = new Bacteria(width / 2,height / 2);
 	//initialize bacteria variables here   
 
 }   
 void draw(){ 
 background(55);
 Bac1.show();
 Bac1.move();
 	//move and show the bacteria   
 }  
 class Bacteria {     
 int x_pos;
 int y_pos;
 int rColor = (int)(Math.random() * 254) + 1;
 int gColor = (int)(Math.random() * 254) + 1;
 int bColor = (int)(Math.random() * 254) + 1;
 float easing =.1;
   
   Bacteria(int x, int y){

    x_pos = x;
    y_pos = y;
   }
   
   void move(){
    int movex = 10;
    int movey = 10;
    x_pos = (int)(Math.random() * 10)  +movex;
    y_pos = (int)(Math.random() * 10) + movey;
    if(x_pos > -500){
      movex =movex + 20;
    }
   }
   
   void show() { 
    
    fill(rColor,gColor,bColor);
    pushMatrix();
    translate(x_pos,y_pos);
    ellipse(x_pos,y_pos,20,20);
    popMatrix();
   }
 	//lots of java!   
 }    
