float time;

void setup(){
  size(540,540);
  smooth(16);
  frameRate(20);
  noStroke();
}

void draw(){
  time=norm(frameCount % 100, 0, 100);
  background(0);
  fill(127,64);
  fractalCircle(width/3*2, height/3*2,200,0);
}

void fractalCircle(float x, float y,float rad, int level){
  float radC = rad/2 + rad*sin(level*PI/5+TAU*time)/2;
  ellipse(x,y, radC, radC);
  if(rad>5){
    for(int j=0; j<6; j++){
      float ang=j*TAU/6;
      float x1= x+rad*cos(ang);
      float y1=y+rad*sin(ang);
      fractalCircle(x1, y1, rad/2, level+1);
    }
  }
}
