int[] pointsX = {-20, 160, 160, 360, 360, 630, 630, 1050};
int[] pointsY = {360, 360, 170, 170, 425, 425, 310, 310};
PImage backgroundMap;

ArrayList<Monster> monsters = new ArrayList<Monster>();

void setup() {
  size(1000, 670);
  backgroundMap = loadImage("back.png");
  background(backgroundMap);

  monsters.add(new Monster(2, 500, 10, loadImage("monster_pink.png"), 20));
}

void draw() {
  background(backgroundMap);

  drawMonsters();
}

void drawMonsters() {
  for (Monster a : monsters) {
    if (a != null && a.visible == true) {
      image(a.image, a.x-(a.monsterSize/2), a.y-(a.monsterSize/2), a.monsterSize, a.monsterSize);
      fill(170);  // Health Bar (Background)
      stroke(80);
      strokeWeight(2);
      rect(a.x-30, a.y-50, 60, 6, 5);
      fill(210, 30, 30);  // Health Bar (Red)
      stroke(80);
      strokeWeight(2);
      double f = (double)a.hp / (double)a.hpmax * 60.0;
      rect(a.x-30, a.y-50, (int)f, 6, 5);
      textSize(20);
      fill(10);
      textAlign(CENTER, CENTER);
      text(a.hp, a.x, a.y-50);
    }
  }
}
