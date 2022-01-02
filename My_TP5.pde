// COLORS
color blue = #40B0E2, white = #FFFFFF, grey = #716A6A, green = #55DE66, red = #FF3E3E;

// VARIABLES

int cloud1 = 0, cloud2 = 400, cloud3 = 800;

int bush1 = 0, bush2 = 300, bush3 = 700;

int stripe1 = 0, stripe2 = 500, stripe3 = 1000;

int box1 = 1000, box2 = 1500;

PImage car, sun;

// SETUP
void setup(){
    size(800,600);
    car = loadImage("car.png");
    sun = loadImage("sun.png");

    noStroke();
}

// DRAW
void draw(){
    background(blue); //my sky
    
    fill(white); //my cloud
    ellipse(cloud1, 150, 100, 100);
    ellipse(cloud1, 200, 100, 100);
    ellipse(cloud1-50, 200, 100, 100);
    ellipse(cloud1+50, 200, 100, 100);
  cloud1 -=1;
  if(cloud1 <= -200){ // reset cloud1
  cloud1 = 1000;
  }
  
  fill(white); //my cloud2
  ellipse(cloud2, 100, 100, 100);
  ellipse(cloud2, 150, 100, 100);
  ellipse(cloud2-50, 150, 100, 100);
  ellipse(cloud2+50, 150, 100, 100);
  cloud2 -=1;
  if(cloud2 <= -200){ // reset cloud2
  cloud2 = 1000;
  }
  
  fill(green); //bush
  ellipse(bush1, 375, 40, 40);
  ellipse(bush1, 400, 40, 40);
  ellipse(bush1-25,400, 40, 40);
  ellipse(bush1+25, 400, 40, 40);
  bush1 -=3;
  if(bush1 <= -75){ // reset bush
  bush1 = 1000;
  }
  
  fill(green); //bush 2
  ellipse(bush2, 375, 40, 40);
  ellipse(bush2, 400, 40, 40);
  ellipse(bush2-25,400, 40, 40);
  ellipse(bush2+25, 400, 40, 40);
  bush2 -=3;
  if(bush2 <= -75){ // reset bush
  bush2 = 1000;
  }
  
  fill(green); //bush 3
  ellipse(bush3, 375, 40, 40);
  ellipse(bush3, 400, 40, 40);
  ellipse(bush3-25,400, 40, 40);
  ellipse(bush3+25, 400, 40, 40);
  bush3 -=3;
  if(bush3 <= -75){ // reset bush
  bush3 = 1000;
  }
  
  fill(grey);
  rect(0,400,800,200); //my race ground
  
  fill(white); //my ground stripes
  rect(stripe1, 500,250,25); 
  rect(stripe2, 500,250,25);
  rect(stripe3, 500,250,25);
  stripe1 -=2; stripe2 -=2; stripe3 -=2;
  if(stripe1 <= -500){ //reset stripes
  stripe1 = 1000;
  }
  if(stripe2 <= -500){ //reset stripes
  stripe2 = 1000;
  }
  if(stripe3 <= -500){ //reset stripes
  stripe3 = 1000;
  }
  
  image(car, 50, 400, width/6, height/8);
  image(sun, 750, -50, width/8, height/6);
  
  fill(red); //danger box1
  rect(box1, 400, 100, 100); 
  if(box1 <= -500){ //reset box
  box1 = 1000;
  }
  
  fill(red); //danger box2
  rect(box2, 500, 100, 100); 
  if(box2 <= -500){ //reset box
  box2 = 400;
  }
  //saveFrame();
}
