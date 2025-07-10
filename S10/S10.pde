Gato miGato;
Perro miPerro;

void setup() {
  size(800, 800);
  miGato = new Gato(color(250, 220, 80), 100, 150, 10);
  miPerro = new Perro(color(250, 220, 250), 100, 500, 20);
}

void draw() {
  background(0);

  miGato.display();
  miPerro.display();

  miGato.correr();
  miPerro.correr();


  miGato.maullar();
  miPerro.ladrar();
}

class Mamifero {
  color c;
  float posX;
  float posY;
  float velocidad;

  void display() {
    fill(c);
    noStroke();
    circle(posX, posY, 100);
  }

  void correr() {
    posX += velocidad;
    if (posX >= width || posX == 0) {
      velocidad = velocidad * -1;
    }
  }
}

class Gato extends Mamifero {
  Gato(color tempC, float tempPosX, float tempPosY, float tempVelocidad) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVelocidad;
  }

  void maullar() {
    println("El gato maulla");
  }
}

class Perro extends Mamifero {
  Perro(color tempC, float tempPosX, float tempPosY, float tempVelocidad) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVelocidad;
  }

  void ladrar() {
    println("Guau!!!!");
  }
}
