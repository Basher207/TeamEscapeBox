float xpos;
float tempXpos;
float ypos;
float tempYpos;
boolean dPressed; boolean aPressed; boolean jumping; boolean falling;
void setup() {
 size(500, 500, P3D);
 
}

void draw() {
 background(150);
 rect(xpos, ypos, 70, 70);
 if (dPressed) {
 xpos++;
 }
 if (aPressed) {
  xpos--; 
 }
 pushMatrix();
 
 translate(0, 0, -600);
 
 for (int i=-3; i < 10; i++) {
line(i*100, -300, i*100, 1000);
line(-300, i*100, 900, i*100);
}
 popMatrix();
 camera(xpos, ypos - 100, (height/2.0) / tan(PI*30.0 / 180.0), xpos, ypos, 0, 0, 1, 0);
 
 
 if (jumping) {   
     ypos -= 2;
 }
 if (falling ) {
    ypos += 2;
 }
   if (ypos <= tempYpos - 50) {
    jumping = false;
    falling = true;
   }
   if (ypos >= tempYpos) {
    falling = false; 
   }
   
   
   
 println(xpos);
 println(ypos);
 println(tempYpos);

}


void keyPressed() {
 if(key == 'd' || key == 'D') {
   dPressed = true;  
 }
 if(key == 'a' || key == 'A') {
   aPressed = true;
}

if(key == 'w' || key == 'W') {
 jumping = true;
 tempYpos = ypos;
}

}

void keyReleased() {
   if(key == 'd' || key == 'D') {
   dPressed = false;
 }

 if(key == 'a' || key == 'A') {
   aPressed = false;
 }
}



