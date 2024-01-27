int[] pointsX = {-20, 160, 160, 360, 360, 630, 630, 1050};
int[] pointsY = {360, 360, 170, 170, 425, 425, 310, 310};
PImage backgroundMap;

// Liste um Monster zu speichern
ArrayList<Monster> monsters = new ArrayList<Monster>();

void setup() {
  size(1000, 670);
  backgroundMap = loadImage("back.png");
  background(backgroundMap);
  
  monsters.add(new Monster(2, 500, 10, loadImage("monster_pink.png"), 20));
}

void draw() {
  
}
