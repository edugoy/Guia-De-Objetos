class Panelista {
  var property puntos = 0

  method puntosOpinionComun() = 1
  method puntosOpinionDeportiva() = self.puntosOpinionComun()
  method puntosOpinionFarandulera(unFarandulero) =  self.puntosOpinionComun()

  method rematar(unaTematica) {
    self.aumentarPuntos(self.puntosRemate(unaTematica))
    self.postRemate()
  }

  method aumentarPuntos(unosPuntos) {
    puntos =+ unosPuntos
  }

  method postRemate() {
    
  }

  method opinar(unaTematica) {
    self.aumentarPuntos(unaTematica.puntosPorOpinion(self))
  }

  method opinarConRemate(unaTematica) {
    self.opinar(unaTematica)
    self.rematar(unaTematica)
  }

  method puntosRemate(unaTematica)
}

class Celebridad inherits Panelista {
  override method puntosRemate(unaTematica) = 3

  override method puntosOpinionFarandulera(unaTematica) =
    if (unaTematica.estaInvolucrado(self)){
        unaTematica.cantidadInvolucrados()
    } else {
        self.puntosOpinionComun()
    }
}

class Colorado inherits Panelista {
  var property gracia

  override method puntosRemate(unaTematica) = gracia / 5

  override method postRemate() {
    gracia =+ 1
  }
}

class ColoradoConPeluca inherits Colorado {
  override method puntosRemate(unaTematica) = super(unaTematica) + 1
}

class Viejo inherits Panelista {
  override method puntosRemate(unaTematica) = unaTematica.cantidadPalabras()
}

class Deportivos inherits Panelista {
  override method puntosOpinionDeportiva() = 5
  override method puntosRemate(unaTematica) = 0
}