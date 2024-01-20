class Monster {
  int x, y; // position des monsters
  int hp;   // aktuelles leben
  int hpmax;  // volles leben
  int damage; // schaden
  int speed; // geschwindigkeit
  
  PImage image; // bild des monsters
  int monsterSize; // groesse des monsters
  int checkpoint;
  
  Monster(int speed, int hp, int damage, PImage image) {
    this.x = pointsX[0];
    this.y = pointsY[0];
    
  }
}
