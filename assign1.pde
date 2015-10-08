/* please implement your assign1 code in this file. */

PImage bg1,bg2,enemy,fighter,hp,treasure;
int hpx,tx,ty,ex,ey,bg1x,bg2x;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  colorMode(RGB);
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  hpx = floor(random(0,205));
  tx = floor(random(600));
  ty = floor(random(0,470));
  ex = 0;
  ey = floor(random(0,470));
  
 
}

void draw() {
  // your code
  background(0);
  image(bg1,bg1x,0);
  
  rectMode(CORNERS); 
  rect(5,5,hpx,27);
  fill(255,0,0);
  image(fighter,580,230);
  image(hp,0,0);
  image(treasure,tx,ty);
  image(enemy,ex,ey);
  ex += 2;
  ex %= 640;
  
}
