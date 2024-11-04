//Extended random walker that moves with a varying framerate and changes colors randomly every time it touches the edge of the window


// Global variables
int pos_x, pos_y, radius; 
float vel_x, vel_y;
color currentColor; //created a variable called currentColor that dictates the current color of the walker, as it will change colors later

void setup() {
  size(600, 800);
  currentColor = color(random(255), random(255), random(255)); //initializing the currentColor with a random rgb color
  background(255);
  pos_x = width/2;
  pos_y = height/2;
  vel_x = random(-10, 10);
  vel_y = random(-10, 10);
  radius = 50;
  frameRate(random(50,1000)); //used the frameRate function to draw the walker much faster - randomly refreshing up to 1000 frames per second
}

void draw() {
  fill(currentColor); //using the currentColor variable to dictate the color of the walker
  ellipse(pos_x, pos_y, radius/4, radius/4);
  pos_x += vel_x;
  pos_y += vel_y;
  
  vel_x = random(-10,10);
  vel_y = random(-10,10);

  //if the ball's edge touches the edge of the window
  if (pos_x > width - radius/4 || pos_x < radius/4) 
  {
    vel_x = -vel_x;
    currentColor = color(random(255), random(255), random(255)); //changing the walker's color randomly if it touches the window
  }

  if (pos_y > height - radius/4 || pos_y < radius/4)
  {
    vel_y = -vel_y;
    currentColor = color(random(255), random(255), random(255)); //changing the walker's color randomly if it touches the window
  }
}
