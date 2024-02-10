class Monster {
  int x, y; // position des monsters
  int hp;   // aktuelles leben
  int hpmax;  // volles leben
  int damage; // schaden
  int speed; // geschwindigkeit

  PImage image; // bild des monsters
  int monsterSize; // groesse des monsters
  int checkpoint;

  boolean visible = true;

  Monster(int speed, int hp, int damage, PImage image, int size) {
    this.x = pointsX[0];  // Startkoordinaten
    this.y = pointsY[0];
    this.hp = hp;  // Insgesamte Leben
    this.image = image;  // Bild vom Monster
    this.damage = damage;  // Wie viel schaden das Monster macht

    this.monsterSize = size;
    this.checkpoint = 0;
    this.hpmax = hp;
  }

  void tick() {
    if (this.checkpoint >= pointsX.length || !this.visible) {    // Wenn nächster Checkpoint nicht mehr gültig ist
      this.visible = false;
      return;
    }

    if (this.x < pointsX[this.checkpoint] - this.speed) this.x += this.speed;        // Anpassen von X Koordinate
    else if (this.x > pointsX[this.checkpoint] + this.speed) this.x -= this.speed;

    if (this.y < pointsY[this.checkpoint] - this.speed) this.y += this.speed;        // Anpassen von Y Koordinate
    else if (this.y > pointsY[this.checkpoint] + this.speed) this.y -= this.speed;

    if (this.x >= pointsX[this.checkpoint] - this.speed &&         // Wenn Checkpoint erreicht
      this.x <= pointsX[this.checkpoint] + this.speed &&
      this.y >= pointsY[this.checkpoint] - this.speed &&
      this.y <= pointsY[this.checkpoint] + this.speed) {

        this.x = pointsX[this.checkpoint];
        this.y = pointsY[this.checkpoint];
        this.checkpoint ++;
    }
  }
}
