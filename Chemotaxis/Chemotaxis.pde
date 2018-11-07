 //declare bacteria variables here   

Bacteria[] BacteriaBlob = new Bacteria[50];
 void setup() {
 noStroke();
 size(500,500);
 for(int i = 0; i < BacteriaBlob.length; i++){
   BacteriaBlob[i] = new Bacteria((int)(Math.random()* 400), (int)(Math.random() * 400));
 }
 	//initialize bacteria variables here   
 
 }   
 void draw(){ 
 background(55);
for (int i = 0; i < BacteriaBlob.length; i++){
    BacteriaBlob[i].show();
  }
  for (int i = 0; i < BacteriaBlob.length; i++){
    BacteriaBlob[i].move();
  }
 
 	//move and show the bacteria   
 }  
 class Bacteria {     
 float x_pos;
 float y_pos;
 int rColor = (int)(Math.random() * 254) + 1;
 int gColor = (int)(Math.random() * 254) + 1;
 int bColor = (int)(Math.random() * 254) + 1;
 float easing =.05;
   
   Bacteria(int x, int y){

    x_pos = x;
    y_pos = y;
   }
   
   void move(){
     if(mousePressed == false){
    float targetX = mouseX;
    float dx = targetX - x_pos;
    x_pos+= dx * easing;
    
    float targetY = mouseY;
    float dy = targetY - y_pos;
    y_pos+= dy * easing;
    
    x_pos = x_pos + (int)(Math.random() * 10)-10;
    y_pos = y_pos + (int)(Math.random() * 10)-10;
    
     } else { 
       float targetX = mouseX;
    float dx = targetX + x_pos;
    x_pos+= dx * easing;
    
    float targetY = mouseY;
    float dy = targetY + y_pos;
    y_pos+= dy * easing;
    
    x_pos = x_pos + (int)(Math.random() * 10)-10;
    y_pos = y_pos + (int)(Math.random() * 10)-10;
    
      
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
