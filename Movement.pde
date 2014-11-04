float x = 0;
float y = 0;
float m = 0;
float n = 0;
void setup() {
  size(500, 500, P3D);
}

void draw() {


  rect(x, y, 100, 100);
}

void keyPressed() {

  while (key == 'd' || key == 'D') {

    m = m + 0.1;
    if (m>5) {
      m = 5;
    }
    x = x + m;
  }
  else while (key == 'a' || key == 'A') {
  m = m + 0.1;
  if (m>5) {
    m = 5;
  }
  x = x - m;
}
else {
  m = 0;
}
}

if (key == 'w' || key == 'W') {
  y--;
} else if (key == 's'|| key == 'S') {
  y++;
}
}

