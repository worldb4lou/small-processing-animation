// COLORS
color blue = #40B0E2, white = #FFFFFF, grey = #716A6A, green = #55DE66, red = #FF3E3E;

// VARIABLES

int cloud1 = 0, cloud2 = 400, cloud3 = 800;

int bush1 = 0, bush2 = 300, bush3 = 700;

int stripe1 = 0, stripe2 = 500, stripe3 = 1000;

int bomb1 = round(random(800,1000)), bomb2 = round(random(1500,2000));

int finish = 99999999;

PImage car, sun, bomb;

int x_car = 50, y_car= 400, distance1, distance2;

// SETUP
void setup(){
    size(800,600);
    car = loadImage("car.png");
    sun = loadImage("sun.png");
    bomb = loadImage("bomb.png");

    
    noStroke();
}

// DRAW
void draw(){
  
    background(blue); //Sky
    
    image(sun, 700, -50, width/6, height/4); // placing the sun png
    
    fill(white); //Cloud1
    ellipse(cloud1, 150, 100, 100);
    ellipse(cloud1, 200, 100, 100);
    ellipse(cloud1-50, 200, 100, 100);
    ellipse(cloud1+50, 200, 100, 100);
  cloud1 -=1;
  if(cloud1 <= -200){ //Reset cloud1
  cloud1 = 1000;
  }
  
  fill(white); //Cloud2
  ellipse(cloud2, 100, 100, 100);
  ellipse(cloud2, 150, 100, 100);
  ellipse(cloud2-50, 150, 100, 100);
  ellipse(cloud2+50, 150, 100, 100);
  cloud2 -=1;
  if(cloud2 <= -200){ // Reset cloud2
  cloud2 = 1000;
  }
  
  fill(green); //Bush1
  ellipse(bush1, 350, 40, 40);
  ellipse(bush1, 370, 40, 40);
  ellipse(bush1-25,370, 40, 40);
  ellipse(bush1+25, 370, 40, 40);
  bush1 -=3;
  if(bush1 <= -75){ //Reset bush
  bush1 = 1000;
  }
  
  fill(green); //Bush 2
  ellipse(bush2, 350, 40, 40);
  ellipse(bush2, 370, 40, 40);
  ellipse(bush2-25, 370, 40, 40);
  ellipse(bush2+25, 370, 40, 40);
  bush2 -=3;
  if(bush2 <= -75){ //Reset bush
  bush2 = 1000;
  }
  
  fill(green); //Bush 3
  ellipse(bush3, 350, 40, 40);
  ellipse(bush3, 370, 40, 40);
  ellipse(bush3-25,370, 40, 40);
  ellipse(bush3+25, 370, 40, 40);
  bush3 -=3;
  if(bush3 <= -75){ //Reset bush
  bush3 = 1000;
  }
  
  fill(grey);
  rect(0,375,800,225); //Race ground
  
  fill(white); //Ground stripes
  rect(stripe1, 475,250,25); 
  rect(stripe2, 475,250,25);
  rect(stripe3, 475,250,25);
  stripe1 -=3; stripe2 -=3; stripe3 -=3;
  if(stripe1 <= -500){ //Reset stripe 1
  stripe1 = 1000;
  }
  if(stripe2 <= -500){ //Reset stripe 2
  stripe2 = 1000;
  }
  if(stripe3 <= -500){ //Reset stripe 3
  stripe3 = 1000;
  }
  
 
  image(car, x_car, y_car, width/8, height/10); // Placing the car as png
  
  image(bomb, bomb1, 375, width/6, height/6); // Placing the bomb as png
  bomb1 -= 2;
  if(bomb1 <= -1000){ //reset box
  bomb1 = 1000;
  }
  
  image(bomb, bomb2, 500, width/6, height/6); // Placing the car png
  bomb2 -= 2;
  if(bomb2 <= -1000){ //reset box
  bomb2 = 2000;
  }
  
 distance1 = bomb1 - x_car;
 if (distance1 <=100){
 y_car = 525;}


 distance2 = bomb2 - x_car;
 if (distance2 <=100){
 y_car = 400;}
 
  //saveFrame();
}
