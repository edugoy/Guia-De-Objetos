import Guia-02.atencionDeAnimales.animales.*

class Vacunatorio {
  var property cantidadVacunas

  method puedeAtenderA(unAnimal) = unAnimal.convieneVacunar()

  method vacunarA(unAnimal) {
    if(self.puedeAtenderA(unAnimal)){
        unAnimal.vacunar()
        cantidadVacunas -= 1
    }
  }

  method necesitaRecargar() = cantidadVacunas  == 0

  method recargar() {
    cantidadVacunas += 50
  }

  method atenderA(unAnimal) {
    self.vacunarA(unAnimal)
  }
}