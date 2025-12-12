class Exiliado {
  var diasExiliado = 0
  const leGustaElTe

  method tomarTe(asentamiento) {
    asentamiento.aumentarPorsperidad(10 * if(leGustaElTe) 1 else -1)    
  }

  method trabajar(asentamiento) {
    diasExiliado =+ 1
  }

  method visitarMonumento(unAsentamiento, unMonumento) {
  }

}

class Nomada inherits Exiliado {

  method esDemonio() {
    return diasExiliado > 100
  }

  override method visitarMonumento(unAsentamiento, unMonumento) {
    if(self.esDemonio() and unAsentamiento.tieneMonumentoASoliamMurr()){
      unAsentamiento.incrementarHabitantes()
    }
  }

  method congraciarse(exiliado, asentamiento, triunvirato) {
    if(self.esDemonio() and asentamiento.tieneMonumentoASoliamMurr()){
      asentamiento.visitarMonumentoASoliamMurr(self)
      asentamiento.visitarMonumentoASoliamMurr(exiliado)
    }

    const horasATrabajar = self.horasDeTrabajoCongraciadas()
    exiliado.trabajar(horasATrabajar, asentamiento)

    const comapaniero = triunvirato.companieroCualquiera(self)
    exiliado.descansar(asentamiento)
    comapaniero.descansar(asentamiento)
  }

  method horasDeTrabajoCongraciadas() {
    return (2..6).anyOne()
  }

}

class Diablillo inherits Exiliado {
  
  method congraciarse(exilidado, asentamiento, triunvirato) {
    asentamiento.visitarTodasLasPLazar(exilidado)
  }
}

class Sabueso inherits Exiliado {
  
  method congraciarse(exiliado, asentamiento, triunvirato) {
    // no hace nada
  }
}