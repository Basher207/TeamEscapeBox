float squaryXmove = 0; // 
float squaryYmove = 0; // 
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;
boolean gravity = true;
float ground = 250;


//add down cancel, so it doesn't go underground.
//add inertia 

void setup(){
size(300,300);
}

void draw(){
  background(100,150,250);
  fill(250,250,250);
  rectMode(CORNER);
rect(-1,ground,802,101); 

fill(250,50,50);
rect(squaryXmove,squaryYmove,40,80);

if(right){
 squaryXmove++; 
         }  
if(left){
 squaryXmove--;
} 
 if(up){
 squaryYmove--;
         }
if(down){
 squaryYmove++; 
         }  
 
if(!up && squaryYmove < ground-80){
  squaryYmove++;
}

 
         }  
            

//controls
void keyPressed(){
  if (key =='d'){
    //squaryXmove--;
    right = true;
  }
      if(key == 'a'){
    //squaryXmove++;
    left = true;
      }
      if(key == 'w'){
    //squaryYmove--;
    up = true;
      }
      if(key == 's'){
    //squaryYmove++;
    down = true;
      }
  }
  
  
    void keyReleased(){
  if (key =='d'){
    //squaryXmove--;
    right = false;
  }
      if(key == 'a'){
    //squaryXmove++;
    left = false;
      }
      if(key == 'w'){
    //squaryYmove--;
    up = false;
    
      }
      
      if(key == 's'){
    //squaryYmove++;
    down = false;
      }
  }
  
  
