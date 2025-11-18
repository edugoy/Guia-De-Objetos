import Guia-02.atencionDeAnimales.animales.*


class Bebederos {
  var property animalesQueBebieron

  method darDeBeber(unAnimal) {
    if(self.puedeAtenderA(unAnimal)){
        unAnimal.beber()
        animalesQueBebieron += 1
    }
  }

  method puedeAtenderA(unAnimal) = unAnimal.verSiTieneSed()

  method recargar() {
    if(self.necesitaRecargar()){
        animalesQueBebieron = 0
    }
  }
  method necesitaRecargar() = animalesQueBebieron >= 20

  method atenderA(unAnimal) {
    self.darDeBeber(unAnimal)
  }
}