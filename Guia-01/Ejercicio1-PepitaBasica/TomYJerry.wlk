object tom {
  var joules = 5

  method comer(unRaton) {
    joules += self.energiaGanada(unRaton.pesoRaton())
  }
  
  method energiaGanada(pesoRaton) = 12 + pesoRaton

  method correr(segundos) {
    joules -= self.energiaPerdida(self.metrosQueCorre(segundos))
  }

  method metrosQueCorre(segundos) {
    return self.metrosQueCorreEn(segundos, self.velocidad())
  }

  method energiaPerdida(metrosRecorridos) = 0.5 * metrosRecorridos

  method velocidad() {
    return 5 + (joules / 10)
  } 

  method metrosQueCorreEn(segundos, velocidad) {
    return velocidad * segundos
  }

  method meConvieneComerA(unRaton, unaDistancia) {
    self.energiaGanada(unRaton.pesoRaton()) > self.energiaPerdida(unaDistancia)
  }
}

object raton {
  var peso = 2

  method pesoRaton() = peso
}