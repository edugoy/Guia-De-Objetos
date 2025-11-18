import Guia-02.atencionDeAnimales.animales.*

class Comedero {
  var property pesoComidaQueDA
  var property pesoAnimalesQueAtiende 
  var property cantidadDeRacionesQueTiene

  method puedeAtenderA(unAnimal) = unAnimal.tieneHambre() && unAnimal.peso() < pesoAnimalesQueAtiende

  method darDeComer(unAnimal) {
    if(self.puedeAtenderA(unAnimal) && cantidadDeRacionesQueTiene > 0){
      unAnimal.comer(pesoComidaQueDA)
      cantidadDeRacionesQueTiene -= 1
    }
  }

  method atenderA(unAnimal) {
    self.darDeComer(unAnimal)
  }
}

class ComederoNormal inherits Comedero {
  
  method necesitaRecargar() {
    cantidadDeRacionesQueTiene < 10
  }

  method recargar() {
    cantidadDeRacionesQueTiene += 30
  }
}

class ComederoInteligente inherits Comedero {
  var property cantidadKilosComida //expresada en gr para que cocincida con el modelado de los animales (1kg -> 1000gr)
  var property cantidadMaxDeKilosComida 
  
  override method darDeComer(unAnimal) {
    const pesoComida = (unAnimal.peso()) / 100
    if(self.puedeAtenderA(unAnimal) && cantidadKilosComida >= pesoComida){
      unAnimal.comer(pesoComida)
      cantidadKilosComida -= pesoComida
    }
  }

  override method puedeAtenderA(unAnimal) = unAnimal.tieneHambre() 

  method necesitaRecargar() {
    cantidadKilosComida < 15000
  }

  method recargar() {
    cantidadKilosComida = cantidadMaxDeKilosComida
  }
}