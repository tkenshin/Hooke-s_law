//
//  F = kx
//

float ex, ey, r;

// 重力加速度
final float g = 9.80665;
// 質量
final float m = 10.0;
// 密着長
float ns  = 50.0;
// 線径
float d = 0.35;
// 速度
float s = 0.1;

void setup() {
  size(500, 500);
  ex = width / 2;
  ey = height / 2;
  r = 20;
  
}


void draw() {
  background(0);
  fill(0);
  stroke(255);
  
  // フックの法則 f = kx
  float f = (ns - ey) * d; 
  
  float acc = f / m;
  s = s + acc + g;
  ey = ey + s;
  
  line(ex, 0, ex, ey);
  ellipse(ex, ey, r, r);
  
}