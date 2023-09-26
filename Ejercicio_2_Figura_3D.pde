PShape ball;
PImage txtr;
float theta;

void setup() {
  size (500, 500, P3D);
  txtr = loadImage("12214_Bird_diffuse.jpg");
  ball = loadShape("12214_Bird_v1max_l3.obj");
  ball.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (0);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (20);
  shape (ball);
  popMatrix();

  theta+=.01; //increment angle
}
