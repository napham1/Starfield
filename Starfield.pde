particle [] germs;
void setup(){
  size(500,500);
  germs = new particle[2000];
  germs[0] = new oddball();
  for(int i = 1; i < germs.length; i++){
    germs[i] = new particle();
  }
}

void draw(){
  background(0);
  germs[0].show();
  germs[0].move();
  for(int i = 1; i < germs.length; i++){
    germs[i].show();
    germs[i].move();
  }
}

class particle{
  double myX;
  double myY;
  double myAngle;
  double mySpeed;
  double mySize;
  int myColor;
  particle(){
    myX = myY = 250;
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 15;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    mySize = 7.5;
  }
  void move(){
    myX = myX + (Math.cos(myAngle) * mySpeed);
    myY = myY + (Math.sin(myAngle) * mySpeed);
  }
  void show(){
    fill(myColor);
    ellipse((float) myX, (float) myY, (float) mySize, (float) mySize);
  }
}

class oddball extends particle{
  oddball(){
    myX = myY = 250;
    mySize = 35;
    myColor = color((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = 1;
    
  }
  void move(){
    myX = myX + (int)(Math.random() * 5) - 2;
    myY = myY + (int)(Math.random() * 5) - 2;
  }
  void show(){
    fill(myColor);
    ellipse((float) myX + 10, (float) myY + 10, (float) mySize + 20, (float) mySize + 20);
    ellipse((float) myX + 25, (float) myY - 10, (float) mySize, (float) mySize);
    ellipse((float) myX - 10, (float) myY - 10, (float) mySize, (float) mySize);
  }
}
