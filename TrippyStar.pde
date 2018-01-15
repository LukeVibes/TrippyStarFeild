//Author: Luke Daschko
//Date: 2017-10-02

//CODE USED TO MAKE THIS SKETCH: https://www.youtube.com/watch?v=17WoOqgXsRM

class TrippyStar{
  float x, y, z;
  float pz;
  float c1, c2, c3;
  float pc1, pc2, pc3;
  boolean line;
    
  TrippyStar(){
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width/2); 
    pz = z;
    
    c1 = random(0, 255);
    c2 = random(0, 255);
    c3 = random(0, 255);
    pc1 = c1;
    pc2 = c2;
    pc3 = c3;
    
    if(abs(x) < 100 && abs(y) < 100){
      line=true;
    }
    else{line=false;}
    
 }

  void refresh(){
    z = z-speed;
    if(z < 1){
      
      z = width/2;
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      pz = z;
      
      if(abs(x) < 100 && abs(y) < 100){line=true;}
      else{line=false;}
      
      
      c1 = random(0, 255);
      c2 = random(0, 255);
      c3 = random(0, 255);
      pc1 = c1;
      pc2 = c2;
      pc3 = c3;
    }
  }

 
 
 void display(){
    float sx = map(x/z, 0, 1, 0, width/2);
    float sy = map(y/z, 0, 1, 0, height/2); 
    float r = map(z, 0, width/2, 20, 0); 
    
    
    
    fill(0);
    ellipse(sx, sy, r, r);
    
    float px = map(x / pz, 0, 1, 0, width/2);
    float py = map(y / pz, 0, 1, 0, height/2);
     
   if(r==3){
     pz = z;
   }
    
   if (line==true){
       c1 = map(z, 0, height/2, 0, pc1); 
       c2 = map(z, 0, height/2, 0, pc2);
       c3 = map(z, 0, height/2, 0, pc3);
       stroke(#C93333);
       //line(px, py, sx, sy);
   }
  
 }
 
}