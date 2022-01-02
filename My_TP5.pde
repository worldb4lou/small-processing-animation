// COLORS
color blue = #40B0E2;
color white = #FFFFFF;
color grey = #716A6A;
color green = #55DE66;

// VARIABLES

int cloud1 = 0;
int cloud2 = 400;
int cloud3 = 800;

int bush1 = 0;
int bush2 = 300;
int bush3 = 700;
int stripe = 800;

PImage car;

// SETUP
void setup(){
    size(800,600);
    car = loadImage("car.png");

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
  cloud1 +=1;
  if(cloud1 == 900){ // reset cloud1
  cloud1 = -200;
  }
  
  fill(white); //my cloud2
  ellipse(cloud2, 100, 100, 100);
  ellipse(cloud2, 150, 100, 100);
  ellipse(cloud2-50, 150, 100, 100);
  ellipse(cloud2+50, 150, 100, 100);
  cloud2 +=1;
  if(cloud2 == 900){ // reset cloud2
  cloud2 = -200;
  }
  
  fill(green); //bush
  ellipse(bush1, 375, 40, 40);
  ellipse(bush1, 400, 40, 40);
  ellipse(bush1-25,400, 40, 40);
  ellipse(bush1+25, 400, 40, 40);
  bush1 +=3;
  if(bush1 == 900){ // reset bush
  bush1 = -200;
  }
  
  fill(green); //bush 2
  ellipse(bush2, 375, 40, 40);
  ellipse(bush2, 400, 40, 40);
  ellipse(bush2-25,400, 40, 40);
  ellipse(bush2+25, 400, 40, 40);
  bush2 +=3;
  if(bush2 == 900){ // reset bush
  bush2 = -200;
  }
  
  fill(green); //bush 3
  ellipse(bush3, 375, 40, 40);
  ellipse(bush3, 400, 40, 40);
  ellipse(bush3-25,400, 40, 40);
  ellipse(bush3+25, 400, 40, 40);
  bush3 +=3;
  if(bush3 == 900){ // reset bush
  bush3 = -200;
  }
  
  fill(grey);
  rect(0,400,800,200); //my race ground
  
  fill(white); //my ground stripes
  rect(stripe-500,500,250,25); 
  rect(stripe,500,250,25);
  rect(stripe+500,500,250,25);
  stripe -=2;
  if(stripe == -500){ //reset stripes
  stripe = 1000;
  }
  
  image(car ,0, 400, width/4, height/5);
  
  //saveFrame();
}
