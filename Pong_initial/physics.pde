void updatePlanckPost() {
  if(up) 
    planckY -= planckmove;
  if (down)
    planckY += planckmove;
    

     
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void resolveCollisions() {
  // Resolving Collisions with floor (bottom wall).
  if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy *= -restitutionCoeff;
  }
  else if(ballY<ballRadius)
    ballVy = -ballVy;
  
  // Resolve Collisions with all other walls.
  if(ballX>displayWidth-ballRadius)
    ballVx = -ballVx;
  else if ((ballX==10 && ballY>planckY) && ballY<planckY+100)
    ballVx = -ballVx;
}