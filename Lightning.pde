int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
PImage heavy; //Image of Heavy
PImage heavyUber; //Image of Uber Heavy

void setup()
{
  size(300,300); //Sets Canvas size
  background(200);
  frameRate(60);
  stroke (225,140,130); //
  fill (255,140,130);
  rect(80,130,250,20,5);
  heavy = loadImage("150px-Icon_heavy.jpg"); //loads the image heavy
  heavyUber = loadImage("heavyuber.jpg"); //loads image heavyUber
}

void draw()
{
  image(heavy, 200, 100,100,100);
  stroke((int)((Math.random()*50)+200),(int)(Math.random()*50),(int)(Math.random()*50));
  strokeWeight(5);
  if (endX > 300); //Lightning bolt stops once off the screen (past 300)
  {
    endX = startX + ((int)(Math.random()*10)); //Makes the lightning bolt
    endY = startY + ((int)(Math.random()*19)-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    stroke(255,255,255);
    fill(255,255,255,5); //Fades lightning bolts into white
    rect(0,0,300,300);
      if (keyPressed) { //If G is pressed, the image changes to Uber Heavy and the beam gets redder 
    if (key == 'g' || key == 'G') {
      fill(0);
    }
        stroke (225,100,100);
    fill (255,100,100);
    rect(80,130,250,20,5);
    image(heavyUber, 200, 100,100,100);
      }
  stroke (20,20,20); //Builds the medigun
  fill(0,0,0);
  rect(0,120,75,50); 
  rect(50,105,30,75,5);
  }
}
void mousePressed() //Resets the value of the lightning
{
startX = 75;
startY = 150;
endX = 75;
endY = 150;
  stroke (225,140,130); //Adds healing beam
  fill (255,140,130);
  rect(80,130,250,20,5);
}

void keyPressed() {
}

void keyReleased() {
}
