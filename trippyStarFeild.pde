TrippyStar[] stars;
float speed;
int maxStars;

void setup(){
  //set up trippy stars
  maxStars = 1000;
  stars = new TrippyStar[maxStars];
  for(int i = 0; i<maxStars; i++){
    stars[i] = new TrippyStar();
  }
  speed = 8;
  
  //set up window
  size(1200, 1200);
  //fullScreen();
  
}




void draw(){
  background(255);
  translate(width/2, height/2);
  
  for(int i = 0; i<maxStars; i++){
    stars[i].refresh();
    stars[i].display();
  }
  
}