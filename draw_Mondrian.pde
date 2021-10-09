int row = 6;
int col = 6;
int cellSize = 200;
int unitTrans = 150;

void setup(){
  size(800,600);
  background(187);
  drawMondrian();
}

void shapeA(){
  stroke(0);
  strokeWeight(4);
  fill(random(225,255));
  rect(0,0,cellSize,cellSize);
}

void shapeB(){
  stroke(0);
  strokeWeight(4);
  rect(0,0,cellSize,cellSize);
  fill(random(180,225));
  rect(0,cellSize/8,cellSize,cellSize/8*3);
}

void shapeC(){
  stroke(0);
  strokeWeight(4);
  rect(0,0,cellSize,cellSize);
  fill(random(135,180));
  rect(0,0,cellSize,cellSize/8);
}

void shapeD(){
  stroke(0);
  strokeWeight(4);
  rect(0,0,cellSize,cellSize);
  fill(random(90,135));
  rect(0,0,cellSize/3,cellSize);
  rect(cellSize/6,0,cellSize/6*2,cellSize/6);
}

void shapeE(){
  stroke(0);
  strokeWeight(4);
  rect(0,0,cellSize,cellSize);
  fill(random(45,90));
  rect(0,cellSize/16*3,cellSize,cellSize/4);
}

void shapeF(){
  stroke(0);
  strokeWeight(4);
  rect(0,0,cellSize,cellSize);
  fill(random(44));
  rect(0,0,cellSize/3,cellSize);
}

void drawMondrian(){
  for(int i = 0;i < row;i ++){
    for(int j = 0;j < col;j ++){
      pushMatrix();
      translate(unitTrans + i*unitTrans,unitTrans + j*unitTrans);
      rotate(PI/2*floor(random(4)));
     int choice = floor(random(6));
      switch(choice){
        case 0:
        shapeA();
        break;
        case 1:
        shapeB();
        break;
        case 2:
        shapeC();
        break;
        case 3:
        shapeD();
        break;
        case 4:
        shapeE();
        break;
        case 5:
        shapeF();
        break;
      }
      popMatrix();
    }
  }
}

void draw(){
  if(mousePressed){
    drawMondrian();
  }
}
