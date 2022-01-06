// COLORS
color blue = #40B0E2, white = #FFFFFF, grey = #716A6A, green = #55DE66, red = #FF3E3E;

// VARIABLES

int cloud1 = 0, cloud2 = 400, cloud3 = 800;

int bush1 = 0, bush2 = 300, bush3 = 700;

int stripe1 = 0, stripe2 = 500, stripe3 = 1000;

int bomb1 = round(random(800,1000)), bomb2 = round(random(1300,1700));

int left = 6000;

PImage car, sun, bomb, finish;

int x_car = 50, y_car= 400, distance1, distance2;

String congrats = "Congratulations";

// SETUP
void setup(){
    size(800,600);
    car = loadImage("car.png");
    sun = loadImage("sun.png");
    bomb = loadImage("bomb.png");
    finish = loadImage("finish.png");
    noStroke();
}

// DRAW
void draw(){
  
  background(blue); //Sky
    
  image(sun, 700, -50, width/6, height/4); // placing the sun png
    
  fill(white); //Cloud1
  ellipse(cloud1, 150, 80, 80);
  ellipse(cloud1, 200, 80, 80);
  ellipse(cloud1-50, 200, 80, 80);
  ellipse(cloud1+50, 200, 80, 80);
  cloud1 -=1;
  if(cloud1 <= -200){ //Reset cloud1
  cloud1 = 1000;
  }
  
  fill(white); //Cloud2
  ellipse(cloud2, 100, 80, 80);
  ellipse(cloud2, 150, 80, 80);
  ellipse(cloud2-50, 150, 80, 80);
  ellipse(cloud2+50, 150, 80, 80);
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
  stripe1 -=2; stripe2 -=2; stripe3 -=2;
  if(stripe1 <= -500){ //Reset stripe 1
  stripe1 = 1000;
  }
  if(stripe2 <= -500){ //Reset stripe 2
  stripe2 = 1000;
  }
  if(stripe3 <= -500){ //Reset stripe 3
  stripe3 = 1000;
  }
  
  image(finish, left, 375); // placing the finish line
  left -=2;
  image(car, x_car, y_car, width/8, height/10); // Placing the car as png
  
  image(bomb, bomb1, 375, width/6, height/6); // Placing the first bomb as png
  bomb1 -= 2;
  if(bomb1 <= -1000){ //reset bomb1
  bomb1 = 1000;
  }
  
  image(bomb, bomb2, 500, width/6, height/6); // Placing the second bomb png
  bomb2 -= 2;
  if(bomb2 <= -1000){ //reset bomb2
    bomb2 = 2000;
  }
  
  distance1 = bomb1 - x_car;
  if (distance1 <= 70 && y_car == 400){
    y_car = 525;
  }


  distance2 = bomb2 - x_car;
  if (distance2 <= 70 && y_car == 525){
    y_car = 400;
  }
 

  if (x_car > left){  
    background(blue); //Sky only
    
    textSize(50);
    fill(red);
    text(congrats, 200, 300);
    
    textSize(20);
    fill(red);
    text("You arrived at the finish line", 250, 350);
  }
  
  saveFrame();
}
