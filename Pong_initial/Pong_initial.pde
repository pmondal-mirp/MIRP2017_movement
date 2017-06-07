int displayWidth=500, displayHeight=500;

float MAX_VELOCITY = 10;

float bgColor = 255;

float gravity = 0.0;
float ballX, ballY;
float ballVx = 0, ballVy = 0;
float ballRadius = 10;
float planckmove = 4.0;
float planckX, planckY;

color ballColor = color(100, 180, 70, 150);

float restitutionCoeff = 0.95;

char UP = 'w', LEFT = 'a', RIGHT = 'd', DOWN = 's';
boolean up, left, right, down;

boolean keys[] = new boolean [4];

void setup() {
  size(displayWidth, displayHeight);
  ballX=displayWidth/2;
  ballY=displayHeight/2;
  planckX=0;
  planckY=400;
  ballVx = 4;
  ballVy = 4;
}

void draw() {
  background(bgColor);
  //detectKeys();
  drawBall();
  drawPlanck();
  updateBallPosition();
  resolveCollisions();
  updatePlanckPost(); 
}

void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}
void drawPlanck() {
  rect(planckX, planckY, 10, 100, 1);
}